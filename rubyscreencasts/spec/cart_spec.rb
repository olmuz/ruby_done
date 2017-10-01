require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"
require_relative "../app/antique_item"
require_relative "../app/item_container"
require_relative "../app/cart"

describe Cart do 

  it "adds items into the cart" do
    cart = Cart.new("roman")
    item1 = Item.new(name: "kettle", price: 200)
    item2 = Item.new(name: "car", price: 200)
    cart.add_items(item1, item2)
    cart.items.should include(item1, item2) # include - mathers method
  end

end