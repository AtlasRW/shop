puts "Veuillez renseigner votre année de naissance :"
print "> "
input = gets.chomp.to_i

years = 2020 - input

years.times do
  puts input = input + 1
end