require './sci-fi_item'
require './sci-fi_enemy'
# ITEMS #
shield = PlasmaShield.new
sword = PlasmaSword.new
puts shield
puts sword
# ITEMS #

# Enemies #
alien = UnknownAlien.new
puts alien
puts "is alive? #{alien.is_alive?}"
# Enemies #
