require './players'
require './questions'

# Welcome message
puts 'Welcome to the two player Math Game!'
puts 'Player 1, please enter your name... '
player1_name = gets.chomp
puts "Thank you #{player1_name}."
puts 'Player 2, please enter your name... '
player2_name = gets.chomp
puts "Thank you #{player2_name}."

# Create 2 new players from the Players class
player1 = Players.new(player1_name)
player2 = Players.new(player2_name)

# First question
question = Questions.new
puts question.question
user_answer = gets.chomp

# Convert question.answer to string to match user input then check answers
if user_answer == question.answer.to_s
  puts 'You got it right!'
else
  puts 'Incorrect!'
end

# Testing/Debugging
puts player1.name
puts player2.name



