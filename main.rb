require 'pry'
require './math-game'

binding.pry

p1 = Player.new(2, 1)
puts p1.name
puts p1.score

test = Questions.new()
puts test.question
puts test.answer