puts "Choisis le nombre d'étages entre 1 et 25 :"
print "> "
input = gets.chomp.to_i

i = 1

puts "Voici la pyramide :"

input.times do
  puts "#" * i
  i = i + 1
end