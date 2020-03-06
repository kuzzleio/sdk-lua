local Protocol = require("/Kuzzle/Protocol/Protocol")
local Routes = require("/Kuzzle/Protocol/Routes")
local httpSocket = require("socket.http")
local ltn12 = require("ltn12")
local json = require("cjson")

local HTTP = {
  state = "offline"
}

function HTTP.new (host, options)
  options = setmetatable(options or {}, {
    __index = {
      port = 7512,
      ssl = false,
      connectTimeout = 30000
    }
  })

  local self = setmetatable(HTTP, Protocol)

  self.port = options.port
  self.ssl = options.ssl
  self.connectTimeout = options.connectTimeout

  self.host = host
  if self.ssl then
    self.protocol = "http"
  else
    self.protocol = "https"
  end

  return self
end

local _send = function (http, method, path, payload)
  payload = payload or {
    body = ""
  }
  payload.body = payload.body or ""

  if path[0] ~= "/" then
    path = "/" .. path
  end

  local url = http.protocol.."://"..http.host..":"..http.port..path
  local res = {}

  resp, err = httpSocket.request{
    url = url,
    method = method,
    headers = {
      ["Content-Type"] = "application/json",
      ["Content-Length"] = tostring(#payload.body)
    },
    source = ltn12.source.string(payload.body),
    sink = ltn12.sink.table(res)
  }
  if not resp then
    error(err)
  end
  return json.decode(table.concat(res))
end

function HTTP:connect ()
  if self.state == "connected" then
    return
  end

  _send(self, "GET", "/")
  self.state = "connected"
end

function HTTP:send(data)
  setmetatable(data, {
    __index = {
      controller = "",
      action = ""
    }
  })

  local route = Routes[data.controller] and Routes[data.controller][data.action]

  if not route then
    error("No route found for "..data.controller.."/"..data.action)
  end
  
  local res = {}
  local payload = {
    action = data.action,
    body = data.body,
    collection = data.collection,
    controller = data.controller,
    headers = {
      ["Content-Type"] = 'application/json'
    },
    index = data.index,
    meta = data.meta,
    requestId = data.requestId
  }
  local queryArgs = setmetatable({}, {
    __newindex = function (t, k, v)
      if not payload[k] then
        rawset(t, k, v)
      end
    end,
    __tostring = function (t)
      local queryString = {}

      for k, v in pairs(t) do
        if type(v) == "table" then
          table.insert(queryString, k.."="..json.encode(v))
        else
          table.insert(queryString, k.."="..v)
        end
      end

      return table.concat(queryString, "&")
    end
  })

  for k, v in pairs(data) do
    if k == "jwt" then
      payload.headers.authorization = "Bearer "..v
    elseif k == "volatile" then
      payload.headers["x-kuzzle-volatile"] = v
    else
      queryArgs[k] = v
    end
  end

  local url = route.url

  for capture in string.gmatch(url, '/ =([^/]*)') do
    if data[capture] ~= nil then
      url = url:gsub(' ='..capture, data[capture])
    end
  end

  url = url.."?"..tostring(queryArgs)

  return _send(self, route.verb, url, payload)
end

return HTTP