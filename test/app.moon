lapis = require "lapis"
console = require "lapis.console"
redis = require "redis"
rclient = redis:connect '127.0.0.1' 6379

class extends lapis.Application
  [user: "/user/:name"]: =>    
    -- rclient.ping()
    rclient.set("a","bb")
    print rclient.get("a")
    @params.name
  [index: "/"]: =>
    "Welcome to Lapis #{require "lapis.version"}!"
  "/console": console.make!
