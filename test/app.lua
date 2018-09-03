local lapis = require("lapis")

local app = lapis.Application()
app:enable("etlua")

local redis = require("redis")
rclient = redis.connect('127.0.0.1', 6379)

app:get("/", function(self)
  return { render = "index" }
end)

app:get("/redis", function(self)
  rclient:set("a", "bb")
  return rclient:get("a")
end)

return app