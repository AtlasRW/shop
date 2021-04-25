def signup
  puts "Veuillez définir un mot de passe :"
  print "> "
  $password = gets.chomp
  return $password
end

def login
  puts "Veuillez renter votre mot de passe à nouveau :"
  print "> "
  $input = gets.chomp
  if $input == $password
    puts "Mot de passe correct."
    welcome_screen
  else
    puts "Mot de passe érroné, veuillez réessayer."
    login
  end
end

def welcome_screen
  puts "Bravo ! Tu as donc le droit à un petit secret..."
  puts "Payer autant pour une formation en ligne et sans prof, c'est de l'arnaque. Voilà, c'est tout."
end

def perform
	signup
	login
end

perform