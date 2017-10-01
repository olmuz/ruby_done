require_relative "store_application"

StoreApplication.new 


@items = []
@items << VirtualItem.new({:weight => 101, :price => 101, :name => "car"})
@items << RealItem.new({:weight => 101, :price => 101, :name => "kettle"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwasher"})


cart = Cart.new("roman")
cart.add_item RealItem.new({:weight => 101, :price => 101, :name => "car"})
cart.add_item RealItem.new({:weight => 101, :price => 150, :name => "car"})
cart.add_item RealItem.new({:weight => 101, :price => 120, :name => "kettle"})

puts cart.kind_of?(Cart) # kind_of поределяет является ли cart обьектом(экземпляром) класса Cart
puts @items[0].respond_to?(:info) # проверяет отвечает ли экземпляр на метод
puts @items[0].send(:tax) #вызыввет на обьекте метод, название которого мы передаем в виде символа (умеет вызывать даже приватные методы)

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