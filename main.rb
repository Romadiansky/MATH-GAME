require 'pry'
require 'pry-byebug'
require './player.rb'
require './game.rb'
require './round.rb'


puts "Player1, what's your name?"
player1 = Player.new(gets.chomp)

puts "Player2, what's your name?"
player2 = Player.new(gets.chomp)

- two rand nums between 1 - 20 (add, subtract or multiply)
- get it wrong and lose a life
- lose three lives and you're dead

/*
result = nil
while result != “q”
  first_val, second_val = 1 + rand(9), 1 + rand(9)
  puts “Player 1, what is #{first_val} + #{second_val}?”
  result = gets.chomp.to_i
  return if result == “q”
  player1.total_games += 1
  if result == first_val + second_val
    puts “Successes!”
    player1.points += 1
  else
    puts “Failure!”
  end
end */


class Player
  has name
  has lives

class Game
  has intro & instructions
  has rounds
  has stop condition
  prints outcome

class Round


class TurnManager
  changes whose turn it is

class Question
  rand num, rand operator, rand num

class Answer

