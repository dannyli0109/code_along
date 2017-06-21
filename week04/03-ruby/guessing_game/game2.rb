require "pry"


puts "Guess game\nPlease enter the max number"
maxNumber = gets.chomp.to_i
puts "Please enter a number between 0 to #{maxNumber}"
randomNumber = Random.rand(0..maxNumber)
pickedNumber = gets.chomp.to_i

while randomNumber != pickedNumber
  if (pickedNumber < randomNumber)
    puts "Wrong, guess higher!"
  else
    puts "Wrong, guess lower!"
  end
  puts "Please enter a number between 0 to #{maxNumber}"
  pickedNumber = gets.chomp.to_i
end

puts("You win!")


binding.pry
