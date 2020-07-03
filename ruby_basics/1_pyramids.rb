def half_pyramid
  puts "Veuillez indiquer le nombre d'étages souhaité :"
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
end

def full_pyramid
  puts "Veuillez indiquer le nombre d'étages souhaité :"
  print "> "
  input = gets.chomp.to_i
  i = 1 
  if input.between?(1, 24)
    if input.odd?
      puts "Voici la pyramide :"
        input.times do
        print " " * input
        print "#" * i
        puts " " * input
        input = input - 1
        i = i + 2
        end
    else
      puts "Le nombre doit être un nombre impair"
    end
  else
    puts "Le nombre d'étages doit être compris entre 1 et 24, veuillez réessayer"
  end
end

def wtf_pyramid
  puts "Veuillez indiquer le nombre d'étages souhaité :"
  print "> "
  input = gets.chomp.to_i
  target = ( input - 1 ) / 2
  repeat = target
  i = 1 
  if input.between?(1, 25)
    if input.odd?
      puts "Voici la pyramide :"
      repeat.times do
        print " " * target
        print "#" * i
        puts " " * target
        target = target - 1
        i = i + 2       
      end
      puts "#" * i
      repeat.times do
        target = target + 1
        i = i - 2
        print " " * target
        print "#" * i
        puts " " * target
      end
    else
      puts "Le nombre doit être un nombre impair !"
    end
  else
    puts "Le nombre d'étages doit être compris entre 1 et 25 !"
  end
end

wtf_pyramid