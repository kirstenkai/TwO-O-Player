
class Player
  attr_accessor :name, :score

  def initialize(score, num)
    @score = score
    @name = "Player #{num}"
  end

  def decrease_score
    @score -= 1
  end
end


class Questions
  attr_accessor :question, :answer, :num_1, :num_2
  def initialize
    num_1 = rand(21)
    num_2 = rand(21)
    @question = "What is #{num_1} + #{num_2}?"
    @answer = num_1 + num_2
  end
end



