require "rspec"
require_relative "../app/item_container"
require_relative "../app/item"
require_relative "../app/virtual_item"

class ItemBox
  include ItemContainer

  def initialize
    @items = []
  end

end

describe ItemBox do

  before(:each) do
    @box = ItemBox.new
  end

  it "add item into the container" do
    item1 = Item.new(name: "kettle", price: 200)
    item2 = Item.new(name: "kettle", price: 300)
    @box.add_item(item1)
    @box.add_item(item2)
    @box.items.should have(2).items
  end

end