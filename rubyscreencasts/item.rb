class Item

  @@discount = 0.05

  def self.discount
    if Time.now.month == 9
      @@discount += 0.1
    else
      @@discount
    end
  end

  def initialize(options={})
    @real_price = options[:price]
    @name = options[:name]
  end

  attr_reader :real_price, :name
  attr_writer :real_price

  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"
  end
  
  def info
   yield(price)
   yield(name)
  end

  def price
  @real_price - @real_price*self.class.discount + tax if real_price # self это обьект(экземпляр класса(инстанс))

  end

  private

    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
      end
      cost_tax = if @real_price > 5
        @real_price*0.2
      else
        @real_price*0.1
      end
      cost_tax + type_tax
    end

end