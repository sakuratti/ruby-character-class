# 勇者 (Hero) のふるまいを表すクラス

class Hero
  attr_reader :name, :hp, :start_hp

  def initialize(name, hp)
    @name = name
    @hp = hp
    @start_hp = hp
  end

  def dead?
    @hp <= 0
  end

  def fullpower?
    @hp == start_hp
  end
  
end