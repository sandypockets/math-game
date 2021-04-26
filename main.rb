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
@player1 = Players.new(player1_name)
@player2 = Players.new(player2_name)

def remove_life(player)
  player.lives -= 1
  puts player.lives
end

def output_score
  puts "--- #{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3 ---"
end

def check_answer(user_input, current_question, player)
  ## Convert question.answer to string to match user input then check answers
  if user_input == current_question.answer.to_s
    puts 'You got it right!'
  else
    puts 'Incorrect!'
    ## Remove a life from the player
    remove_life(player)
    puts player.lives
  end
end

def ask_question(player)
  question_one = Questions.new
  puts "#{player.name}, you're up!"
  puts question_one.question
  user_answer = gets.chomp
  check_answer(user_answer, question_one, player)
  output_score
end

def ask_question_to_each_player
  ## Player 1
  ask_question(@player1)
  ## Player 2
  ask_question(@player2)
  puts '--- NEW ROUND ---'
end

# Run the game as long as both players are still alive
ask_question_to_each_player while @player1.still_alive? && @player2.still_alive?




