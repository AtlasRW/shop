puts "Veuillez renseigner votre année de naissance :"
print "> "
input = gets.chomp.to_i

years = 2020 - input
age = 0

years.times do
  puts "En #{input = input + 1} vous aviez #{age = age + 1} ans"
end