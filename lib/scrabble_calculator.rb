# Write a program that calculates the score for a word in Scrabble.

points = { 
    :one => ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"],
    :two => ["D", "G"],
    :three => ["B", "C", "M", "P"],
    :four => ["F", "H", "V", "W", "Y"],
    :five => ["K"],
    :eight => ["J", "X"],
    :ten => ["Q", "Z"]
}
sum = []

puts "Choose your scrabble word to find out it's worth: "
user_input = gets.chomp.upcase.split("")

user_input.each do |letter|
  sum.push(1) if points[:one].include? letter
  sum.push(2) if points[:two].include? letter
  sum.push(3) if points[:three].include? letter
  sum.push(4) if points[:four].include? letter
  sum.push(5) if points[:five].include? letter
  sum.push(8) if points[:eight].include? letter
  sum.push(10) if points[:ten].include? letter
end

puts sum.sum