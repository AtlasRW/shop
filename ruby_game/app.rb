require 'bundler'
Bundler.require
require 'colorize'

$:.unshift File.expand_path("../lib",__FILE__)

require 'player'
require 'game'
require 'board'
require 'application'

while true
  puts "Enter Player 1 name :".center(50).yellow
  print "> "
  player1_name = gets.chomp
  player1 = Player.new(player1_name)

  puts "Enter Player 2 name:".center(50).yellow
  player2_name = gets.chomp
  print "> "
  player2 = Player.new(player2_name)

  game = Game.new(player1,player2)

  board = Board.new
  board.show_state

  puts "For victory, complete a row, a column or a diagonal".center(53)
  puts "Target locations : A1, A2, A3, B1, B2, B3, C1, C2, C3".center(50)

  app = Application.new(game,board)
  app.game_loop

  puts "---------------".center(50).yellow
  puts "Press any key to play again".center(50).yellow
  puts "Press q to exit".center(50).yellow
  puts "---------------".center(50).yellow
  choice = gets.chomp
  case choice
    when 'q'
      exit
    else
      redo
  end
end