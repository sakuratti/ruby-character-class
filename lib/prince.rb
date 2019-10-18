# 主人公 (広島のPrince) のふるまいを表すクラス

class Prince
  attr_reader :name, :power

  def initialize(name, power)
    @name = name
    @power = power
  end

  def homerun?
    @power >= 55
  end
  
end