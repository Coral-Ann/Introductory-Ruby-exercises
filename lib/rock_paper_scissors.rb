# Make a rock-paper-scissors program.

puts "Player 1 go: "
p1 = gets.chomp.downcase
puts "Player 2 go: "
p2 = gets.chomp.downcase

puts "Player 1 wins" if p1 == "scissors" && p2 == "paper"
puts "Player 1 wins" if p1 == "paper" && p2 == "rock"
puts "Player 1 wins" if p1 == "rock" && p2 == "scissors"
puts "Player 2 wins" if p2 == "scissors" && p1 == "paper"
puts "Player 2 wins" if p2 == "paper" && p1 == "rock"
puts "Player 2 wins" if p2 == "rock" && p1 == "scissors"
puts "It's a draw" if p1 == p2