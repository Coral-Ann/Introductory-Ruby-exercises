# Build a game that lets you choose directions, if the user finds the correct path, they'll win.

counter = 1

while true do
  puts "Choose left (l), right (r), or forward (f): "
  
  case gets.chomp.downcase
    when "l"
      puts "Oh no! A werewolf killed you!"
      break
    when "r"
      puts "Oh no! A goblin killed you!"
      break
    when "f"
      if counter == 2
        puts "Great! You win!"
        break
      else
        puts "You proceed forward! Type left (l), right (r), or forward (f): "
      end
    end
  counter += 1
end