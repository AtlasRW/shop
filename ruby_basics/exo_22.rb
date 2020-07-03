puts "Choisis le nombre d'étages entre 1 et 25 :"
print "> "
n = gets.chomp.to_i

a = n
i = 0

puts "Voici la pyramide :"

while i <= n
  print " " * a

  a = a - 1
  i = i + 1

  puts "#" * i
end