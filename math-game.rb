

# class Players(name)
# Will take a players name
# Will keep track of each players score
# decrease score
class Player
  attr_accessor :name, :score

  def initialize(score, num)
    @score = "#{score}/3"
    @name = "Player #{num}"
  end

  def decrease_score
    @score -= 1
  end
end

# class Game 
# This class handles the looping

# Starts a new game
# Keeps track of turns
# This class could maintain the I/O of the players
# keep track of players
# If the answer is equal to the sum of the two numbers, then the player is correct
# If the answer is not equal to the sum of the two numbers, then the player is wrong and their score goes down by one

# class Questions
# Generate the questions
# Keep track of the right answer
# check: boolean

class Questions
  def initialize
    generate_num = rand(20)
    puts generate_num
  end
  

end



