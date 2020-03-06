local methods = {
  "connect", 
  "disconnect",
  "send",
  "dispatchResponse",
  "dispatchStateChange"
}

local Protocol = {}

setmetatable(Protocol, {
  __index = function(table, key)
    for _, v in ipairs(methods) do
      if (key == v) then
        error(key .. " must be implemented.")
      end
    end
  end,
  __newindex = function ()
    error("Protocol is immutable.")
  end
})

return Protocol