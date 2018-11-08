# Represents one player
class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def bleed
    @lives -= 1
  end
end