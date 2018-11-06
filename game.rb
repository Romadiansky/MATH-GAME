class Game
  def initialize
    @players = [
      Player.new('player1'),
      Player.new('player2')
    ]
  @turn_manager = TurnManager.new(@players)

  def play
    while (not game_over?) do
      turn = @turn_manager.next_turn


