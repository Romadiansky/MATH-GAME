require 'pry'
require 'pry-byebug'
require './player.rb'
require './game.rb'
require './round.rb'
require './question.rb'

class Game
  def initialize
    welcome_message
    @players = [Player.new("Player 1"), Player.new("Player 2")]
    @current_round = Round.new(self, @players, 0)
  end

  def welcome_message
    puts "Welcome to Math_Game, where math happens. Have a day."
  end

  def end_game
    puts "Well, that happened. Game over"
    exit
  end
end

Game.new