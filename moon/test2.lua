require("moonscript")

ms = require("test")
-- a = ms.hello("s")

-- return print(ms.sum2(1, 5))

b = ms.Inventory()

-- print (b.items["t"])

b:add_item("a")
b:add_item("a")

print (b.items["a"])

-- pprint = require("pl.pretty").dump

-- pprint(ms.some_values)
