puts "Veuillez indiquer un nombre d'étages entre 1 et 25 :"
print "> "
input = gets.chomp.to_i
i = 0 

if input.between?(1, 25)

  puts "Voici la pyramide :"

  input.times do
    input = input - 1
    print " " * input
    i = i + 1
    puts "#" * i
  end

else

  puts "Le nombre d'étages doit être compris entre 1 et 25, veuillez réessayer"

end