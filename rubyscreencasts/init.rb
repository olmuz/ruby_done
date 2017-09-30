require_relative "cart"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

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

=end
item1 = VirtualItem.new({:name => "Victor", :price => 10, :weight => 100})
item2 = RealItem.new({:name => "Victor", :weight => 100})



puts item1.price
puts item1.real_price