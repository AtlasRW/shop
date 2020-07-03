require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts ""
puts "Bienvenue dans LA GUERRE EST DANS LE PRÉ !"
puts ""
puts "Honneur aux dames. À ma gauche, l'inénarrable #{player1.name} !"
puts "Et à ma droite, l'incommensurable... #{player2.name} !"
puts ""

puts "Nos combattants sont en pleine forme :"
player1.show_state
player2.show_state
puts ""

puts "ARE YOU READY TO RUUUUUUUMBLE ?"
puts "FIGHT !"
puts ""

player1.attacks(player2)
player2.attacks(player1)
while player1.life > 0 && player2.life > 0
  puts ""
  puts "État des combattant :"
  player1.show_state
  player2.show_state
  puts ""

  puts "FIGHT !"
  player1.attacks(player2)
  if player2.life < 1
    break
  end
  player2.attacks(player1)
end

if player1.life < 1
  puts ""
  puts "Victoire pour #{player2.name} !"
elsif player2.life < 1
  puts ""
  puts "Victoire pour #{player1.name} !"
end