module ItemContainer

  module ClassMethods

    def min_price # self убираем <= это отсается методом класса
      100
    end

  end

  module InstanceMethods

    def method_missing(method_name)  # callback, вызывается при попытке вызвать несуществующий метод
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        #puts "method #{method_name} is not defined on this object"
        super
      end
    end

    def add_item(item)
      unless item.price < self.class.min_price
        @items.push(item)
      end  
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

    def count_valid_items
      @items.count {|i| i.price}
    end

    private
      def show_all_items_with_name(n)
        @items.map {|i| i if n = i.name}.delete_if{ |i| i.nil?}
      end

  end

  # метод вызывается каждый раз когда модуль куда-нибудь инклудится
  def self.included(base)  # в base попадает тот класс в который инклудится модуль  
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

end
