require "pry"

randomNumber = Random.rand(0...10)
puts "Guess game\nPlease enter a number between 0 to 10"
pickedNumber = gets.to_i

while randomNumber != pickedNumber
  puts "Wrong guess\nPlease guess again!"
  pickedNumber = gets.to_i

end

puts("You win!")


binding.pry
