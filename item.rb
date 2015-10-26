class Item
  attr_reader :name, :value, :description

  def initialize(name, value, description)
    @name = name
    @value = value
    @description = description
  end

  def to_s
    "-" * 100 + "\nName: #{name}\nValue: #{value}\nDescription: #{description}"
  end
end

class Weapon < Item
  attr_reader :attack

  def initialize(name, value, description, attack)
    @attack = attack
    super(name, value, description)
  end

  def to_s
    super + "\nAttack: #{attack}"
  end
end

class Armor < Item
  attr_reader :defense

  def initialize(name, value, description, defense)
    @defense = defense
    super(name, value, description)
  end

  def to_s
    super + "\nDefense: #{defense}"
  end
end
