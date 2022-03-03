counter = 1

while true do
    puts "Choose left (l), right (r), or forward (f): "
    input_1 = gets.chomp.downcase
  
    if input_1 == "l"
        puts "Oh no! A werewolf killed you!"
        break
    elsif input_1 == "r"
        puts "Oh no! A goblin killed you!"
        break
    elsif input_1 == "f"
        if counter == 2
            puts "Great! You win!"
            break
        else
            puts "You proceed forward! Type left (l), right (r), or forward (f): "
        end
        counter += 1
    end
end