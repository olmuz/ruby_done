class StoreApplication

  class << self # внутри мы можем определять все методы класса без использования ключевого слова self
    
    def new # переопределение метода класса new
      unless @instance
        puts "loading files..."
        require_relative "string"
        require_relative "item_container"
        require_relative "item"
        require_relative "virtual_item"
        require_relative "real_item"
        require_relative "antique_item"
        require_relative "cart"
        require_relative "order"
      end
      @instance ||= self # записываем в инстансную переменную сам класс StoreApplication
      # инстансная переменная имеет отношение к самому классу, так как классы тоже являются обьектами
      # ||= означает что если инстансная переменная пустая то тогда в нее записывается переменная self
    end

  end

end