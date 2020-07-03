require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts ""
puts "|///////////////////////////////////////////////|"
puts "|            L'AMOUR EST DANS LE PRÉ            |"
puts "|-----------------------------------------------|"
puts "|                 BATTLE ROYALE                 |"
puts "|///////////////////////////////////////////////|"
puts ""
puts "Tu cherches l'amour et les PATATES DE FORAINS ?"
puts "Alors bienvenue, jeune paysan bourrin !"
puts ""
puts "Comment t'appelles-tu"
print "> "
input = gets.chomp.to_s
user = HumanPlayer.new(input)
enemy1 = Player.new("Josiane")
enemy2 = Player.new("José")
enemies = Array.new
enemies << enemy1
enemies << enemy2

while user.life > 0 && (enemy1.life > 0 || enemy2.life > 0)
  puts "----------------------------------"
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner "
  puts "----------------------------------"
  puts "attaquer un joueur en vue :"
  print "0 - "
  enemy1.show_state
  print "1 - "
  enemy2.show_state
  print "> "
  menu_input = gets.chomp.to_s
  puts "----------------------------------"
  if menu_input == "a"
    user.search_weapon
  elsif menu_input == "5"
    user.search_health_pack
  elsif menu_input == "0"
    user.attacks(enemy1)
  elsif menu_input == "1"
    user.attacks(enemy2)
  else
    puts "Je n'ai pas compris, réessaye"
  end
  enemies.each do |enemy|
    if enemy.life < 1
      break
    end
    
    puts "----------------------------------"
    enemy.attacks(user)
    puts "----------------------------------"
  end
end
puts "----------------------------------"
puts "Partie terminée !"
puts "----------------------------------"
if user.life >0
  puts ""
  puts "Victoire pour #{user.name} !"
end

if enemy1.life > 0 && enemy2.life > 0
  puts ""
  puts "Victoire pour #{enemy1.name} et #{enemy2.name} !"
end
#fin