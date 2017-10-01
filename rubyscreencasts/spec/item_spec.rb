require "rspec"
require_relative "../app/item"
require_relative "../app/virtual_item"

describe Item do

  before(:each) do # выполняется перед каждым тестом (it)
    @item = Item.new(price: 200, name: "kettle")
  end

  before(:all) do  # выполняется только один перед запуском всех тестов
  end

  after(:each) {}
  after(:all)  {}

  it "calculates price according to a special formula" do
    @item.price.should == 232
    @item.price == 300
  end

  it "returns info about object" do
    @item.to_s.should == "kettle:232.0"
  end

end