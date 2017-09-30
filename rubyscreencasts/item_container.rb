module ItemContainer

  def add_item(item)
    @items.push(item)
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each { |i| puts "Item has no price" if i.price.nil?}
  end
  
  def delite_invalid_items
    @items.delete_if {|i| i.price.nil?}
  end

end