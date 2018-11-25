class Inventory
  new: =>
    @items = {}
    @items["t"]=100

  add_item: (name) =>
    if @items[name]
      @items[name] += 1
    else
      @items[name] = 1

inv = Inventory!
inv\add_item "tshirt"
inv\add_item "tshirt"
inv\add_item "pants"
inv\add_item "pants"
inv\add_item "pants"

print inv.items["pants"]

sum2 = (x, y) -> 
    x + 2*y

-- export sum2

print sum2 1, 2

some_values = {
  name: "Bill",
  age: 200,
  ["favorite food"]: "rice"
}

-- print some_values

hello = (name) ->
  print "Hello #{name}!"

pl = require "pl.pretty"
pprint = pl.dump

-- pprint inv

moon = require "moon"

moon.p inv

t = require 'pl.text'  
t.format_operator()

print "test %s %s"%{1,2}

{:hello,:sum2,:Inventory,:some_values}


-- ORM https://github.com/itdxer/4DaysORM