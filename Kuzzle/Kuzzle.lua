Protocol = require("/Kuzzle/Protocol/Protocol")
Document = require("/Kuzzle/API/Controllers/Document")
local json = require("cjson")

local Kuzzle = {}
Kuzzle.__index = Kuzzle
local version = "1.0.0-RC1"

local random = math.random

local uuid = function ()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'

    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

function Kuzzle.new (protocol)
  if getmetatable(protocol) ~= Protocol then
    error("protocol must be a metatable Protocol")
  end

  local self = setmetatable(Kuzzle, {
    __index = {
      protocol = protocol,
      jwt = nil
    }
  })

  self.document = Document.new(self)

  return self
end

function Kuzzle:connect ()
  self.protocol:connect()
end

function Kuzzle:query (query, options)
  if self.protocol.state ~= "connected" then
    error("Not connected to a Kuzzle instance.")
  end

  setmetatable(query, {
    __index = {
      requestId = uuid(),
      version = version,
      instanceId = uuid(),
      volatile = {}
    }
  })

  if self.jwt then
    query.jwt = self.jwt
  end

  if options then
    for k, v in pairs(options) do
      query[k] = v
    end
  end

  query.body = json.encode(query.body)
  return self.protocol:send(query)  
end

return Kuzzle