require 'colorize'

class Application
  attr_reader :game, :board, :p1, :p2

  def initialize(game,board)
    @game = game
    @board = board
    @p1 = game.player1
    @p2 = game.player2
  end

  def game_loop
    puts "---------------".center(60)
    puts "#{@p1.name} is X, #{@p2.name} is O".center(60).yellow
    puts "LET'S PLAY".center(60).yellow
    puts "---------------".center(60)
    while game.is_over?(board.grid,'X') == false && game.is_over?(board.grid,'O') == false
      p1_move = @p1.select_move
      board.place_pawn(p1_move,'X')
      board.show_state
      break if game.is_over?(board.grid,'X')
      puts ""
      p2_move = @p2.select_move
      board.place_pawn(p2_move,'O')
      board.show_state
      break if game.is_over?(board.grid,'O')
      puts ""
    end
  end
end
