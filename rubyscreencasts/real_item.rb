class RealItem < Item
  def initialize(options)
    @weight = options[:weight]
    super(options) 
    #super    # можно не передавать явно options, 
    #так как по умолчанию super'у передаются те же самые аргументы что и методу initialize 
  end

  def info
    yield(weight)
    super
  end

  attr_reader :weight

end