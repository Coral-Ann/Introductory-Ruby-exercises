# Write a program that acts like a magic 8 ball.  It should:
# * Randomly choose one of five predictions:
#   * `It is certain`
#   * `It is decidedly so`
#   * `Ask again later`
#   * `Outlook not so good`
#   * `Very doubtful`
# * `puts` the prediction it chose.
# * Example output from running the program several times:
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   Ask again later
#   $ ruby question_1.rb
#   It is certain

def magic_8_ball
  answer = rand(1..5)
  puts "It is certain" if answer == 1
  puts "It is decidedly so" if answer == 2
  puts "Ask again later" if answer == 3
  puts "Outlook not so good" if answer == 4
  puts "Very doubtful" if answer == 5
end

magic_8_ball