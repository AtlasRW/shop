puts "Choisis le nombre d'étages entre 1 et 25 :"
print "> "
n = gets.chomp.to_i

i = 1

puts "Voici la pyramide :"

while i <= n
  puts "#" * i
  i = i + 1
end