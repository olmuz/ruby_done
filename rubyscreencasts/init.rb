require_relative "item_container"
require_relative "cart"
require_relative "item"
require_relative "order"
require_relative "virtual_item"
require_relative "real_item"

=begin
cart = Cart.new
cart.add_item(Item.new)
cart.add_item(Item.new)
p cart.items

cart.remove_item
p cart.items

cart.validate

puts "==============="
#puts item.info {|attr| puts attr}
cart = Cart.new
cart.add_item(item1)
cart.add_item item2 # скобки не обязательны

p cart.items

cart.delite_invalid_items

p cart.items

p item1.respond_to?(:weight) # узнать отвечает ли обьект item1 на вызов метода-геттера weight
p item2.respond_to?(:weight)


#puts item1.price
#puts item1.real_price

cart.remove_item
puts cart.items.size

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
order.remove_item
puts order.items.size

puts order.count_valid_items


cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3

puts cart.items.size
=end
@items = []
@items << VirtualItem.new({:name => "car", :price => 101, :weight => 100})
@items << RealItem.new({:name => "kettle", :weight => 101, :price => 101,})
@items << RealItem.new({:name => "dishwasher", :weight => 100, :price => 101})