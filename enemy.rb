class Enemy
  attr_reader :name, :damage #, :defense
  attr_accessor :hp
  def initialize(name, hp, damage)
    @hp = hp
    @name = name
    @damage = damage
  end

  def to_s
    '-' * 100 + "\nName #{name}\nHP: #{hp}\nDamage: #{damage}"
  end

  def is_alive?
    @hp > 0
  end
end
