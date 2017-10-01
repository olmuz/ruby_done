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

  def to_s
    super + ":#{self.weight}"
  end

  attr_reader :weight

end