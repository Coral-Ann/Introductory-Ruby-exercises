# Write a game where the player swims down a river infested with crocodiles.

river = "-----,--C--,CC-CC,CC-CC"
count = 0
place = 2

while true
  river_arr = river.split(",")
  if river_arr[count][place] == "C"
    puts "You were eaten."
    break
  else
    river_arr[count][place] = "P"
    puts river_arr
  end
  if count == 3
    puts "You survived!"
    break
  else
    puts "Type left, right or neither"
    user_input = gets.chomp
    if user_input == "left"
      place -= 1
    elsif user_input == "right"
      place += 1
    elsif user_input == "quit"
      break
    end
  end
  count += 1
end