require './item'
require './enemy'

class Room
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def basic_text
    raise "Not implemented!"
  end

  def modify_player(player)
    raise "Not implemented!"
  end
end
