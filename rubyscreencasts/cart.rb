class Cart

  attr_reader :items

  include ItemContainer

  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts i}
    end
  end
  
  def read_from_file
    return unless File.exists?("#{@owner}_cart.txt")
    File.readlines("#{@owner}_cart.txt").each {|i| @items << i.to_real_item }
    #item_fields.map! { |i| i.chomp } # метод chomp удаляет последний элемент # "car:100:50"
    #item_fields.map! { |i| i.split(":")} # разбивает строку ["car", "100", "50"]
    #item_fields.each { |i| @items << RealItem.new(name: i[0], price: i[1].to_i, weight: i[2].to_i)}
    @items.uniq!
  end

end