require "pry"

class User
  def greet
    puts "Bonjour, monde !"
  end
end

julie = User.new
jean = User.new

julie.greet
jean.greet
puts "end of file"