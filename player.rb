class Player
  def initialize(name)
    @name = name
    @total_games = 0
    @lives = 3
  end

  attr_accessor :name, :score, :total_games, :lives

end