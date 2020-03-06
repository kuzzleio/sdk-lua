local HTTP = require("../Kuzzle/Protocol/HTTP")
local Kuzzle = require("../Kuzzle/Kuzzle")
local json = require("cjson")

http = HTTP.new("localhost", {
  port = "7512"
})
kuzzle = Kuzzle.new(http)

kuzzle:connect()

-- print(json.encode(kuzzle.document:create("my-index", "my-collection", {bar = "foo", obj = {foo = "bar"}}, nil, {
--   refresh = "wait_for",
--   bull = "shit"
-- })))
-- print(json.encode(kuzzle.document:count("my-index", "my-collection")))
-- print(json.encode(kuzzle.document:get("my-index", "my-collection", "42")))

local res = kuzzle.document:search("my-index", "my-collection", {
  sort = {
    bar = {
      order = "asc"
    }
  }
}, {size = 1})

print(tostring(res:next()))
print(tostring(res:next()))
