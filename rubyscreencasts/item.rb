class Item

  @@discount = 0.1

  def self.discount
    if Time.now.month == 9
      @@discount += 0.2
    else
      @@discount
    end
  end

  def initialize(options={})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :price, :name
  attr_writer :price
  
  def info
   yield(price)
   yield(name)
  end

  def price
    @price - @price*self.class.discount + tax  # self это обьект(экземпляр класса(инстанс))
  end

  private
  
    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
      end
      cost_tax = if @price > 5
        @price*0.2
      else
        @price*0.1
      end
      cost_tax + type_tax
    end

end