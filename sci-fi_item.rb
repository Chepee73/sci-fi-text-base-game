require './item'

class PlasmaShield < Armor
  def initialize
    super("Plasma Shield", 10, "A last generation shield with a plasma generator for higher performance.", 50)
  end
end

class PlasmaSword  < Weapon
  def initialize
    super("Plasma Sword", 10, "Ultra hot plasma with the flexibility of an old sword.", 50)
  end
end
