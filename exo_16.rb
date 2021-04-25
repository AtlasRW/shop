puts "Veuillez renseigner votre année de naissance :"
print "> "
input = gets.chomp.to_i

age = 2020 - input - 5
year = input + 5
i = 0

age.times do
  print "En #{year = year + 1}, 5 ans auparavant vous aviez #{i = i + 1} ans"
end