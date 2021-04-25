class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def select_move
    puts "#{@name}'s turn :"
    player_choice = gets.chomp
  end

end
