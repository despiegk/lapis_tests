redis = require "redis"
rclient = redis.connect('127.0.0.1', 6379)
print rclient.ping()
print "aaaaa"