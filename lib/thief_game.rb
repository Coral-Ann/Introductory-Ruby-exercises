where_am_i = 1

while true do
  puts "What do you want to do?"

  case gets.chomp.downcase
  when ""
    puts "hints: look / north / south / quit"
  when "quit"
    puts "Bye!"
    break
  when "2451"
    puts "You go and unlock the safe, find diamonds, and make your escape!"
    break
  when "desk"
    puts "You see a piece of paper that reads, The combination is 2451."
  when "north"
    if where_am_i == 1
      puts "You move north."
      where_am_i = 2
    else
      puts "You can't move further north."
    end
  when "south"
    if where_am_i == 2
      puts "You move south."
      where_am_i = 1
    else
      puts "You can't move further south."
    end
  when "look"
    if where_am_i == 1
      puts "You are standing in a hall with a marble floor. You see a door."
    else
      puts "You are in a warm and cosy study. You see a safe. You see a desk."
    end
  end
end