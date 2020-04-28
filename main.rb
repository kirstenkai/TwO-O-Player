
require './math-game'
# class Game 
# This class handles the looping
# Keeps track of turns
# This class could maintain the I/O of the players
# keep track of players
# If the answer is equal to the sum of the two numbers, then the player is correct
# If the answer is not equal to the sum of the two numbers, then the player is wrong and their score goes down by one

class Game
  player_1 = Player.new(3, 1)
  player_2 = Player.new(3, 2)

  puts 'Math Game'
  puts player_1.name, player_1.score
  puts player_2.name, player_2.score
  
  turns = 0
  while player_1.score > 0 && player_2.score > 0
    turns += 1
    generate_question = Questions.new
    answer = generate_question.answer
    puts '--------- NEW TURN ------------'
    if turns.odd?
      puts "Player 1: " + generate_question.question
    else
      puts "Player 2: " + generate_question.question
    end

    user_input = gets.chomp

    if user_input.to_i == answer
      puts "YES! You are correct."
    else
      if turns.odd?
        player_1.decrease_score
      else 
        player_2.decrease_score
      end
      puts "Incorrect!!!"
    end

    puts "P1: #{player_1.score}/3 vs P2: #{player_2.score}/3"
  end

  if player_1.score == 0
    puts "Player 2 wins with a score of #{player_2.score}/3"
  else
    puts "Player 1 wins with a score of #{player_1.score}/3"
  end

end

# test = Questions.new()
# puts test.question
# puts test.answer