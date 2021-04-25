puts "Veuillez renseigner votre année de naissance :"
print "> "
input = gets.chomp.to_i

age = 2020 - input
years = age - 5
year = input + 5
i = 0

years.times do
  puts "En #{year = year + 1}, 5 ans auparavant vous aviez #{i = i + 1} ans"
    if i == 5
      puts "5 ans auparavant, tu avais la moitié de l'âge que tu as aujourd'hui"
    end
end