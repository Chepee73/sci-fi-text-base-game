require './enemy'


class UnknownAlien < Enemy
  def initialize
    super("Unknown Alien", 30, 13)
  end
end
