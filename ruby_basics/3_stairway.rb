def roll_dice
  return rand(6)+5
end

def analyze_dice(dice)
  if dice >=5
    puts "Vous avancez!"
    return 1
  elsif dice == 1
    puts "Vous reculez!"
    return -1
  else
    puts "rien ne se passe"
    return 0
  end
end

def is_over?(step)
  if step == 10
    return true
  else
    return false
  end
end

def show_state(step)
  puts "Vous êtes sur la marche n° #{step}"
end

def play
  puts "Bienvenue dans le jeu!!"

  step = 1
  show_state(step)

  while(!is_over?($step)) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state($step)
  end

  puts "===Vous avez gagné!==="
end

play