# Build a game that lets you choose directions, if the user finds the correct path, they'll win.

count = 1

while true
  puts "Please move north or south: "
  user_input = gets.chomp.downcase

  if user_input == "north"
    if count == 2
      puts "You walk into sunlight."
      break
    end
    puts "You are in a scary cave."
    count += 1
  elsif user_input == "south"
    puts "You are in a scary passage."
    count = 1
  end
end