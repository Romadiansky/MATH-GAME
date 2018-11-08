# Represents one turn
class Round

  def initialize(game, players, player_index)
    @game = game
    @players = players
    @player = players[player_index]

    ask_question
    evaluate_answer
    end_round
    start_next_round(player_index)
  end

  def ask_question
    @question = Question.new
    puts "#{@player.name}: #{@question.wording}"
    print "> "
    @player_answer = gets.chomp
  end

  def evaluate_answer
    if @question.answer.to_i == @player_answer.to_i
      puts "That is correct"
    else
      puts "Wrong, stupid. You lose life"
      @player.bleed
    end
  end

  def end_round
    if @player.lives <= 0
      puts "you dead, son"
      @game.end_game
    else
      puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    end
  end

  def start_next_round(current_player_index)
    (current_player_index == 0) ? Round.new(@game, @players, 1) : Round.new(@game, @players, 0)
  end
end