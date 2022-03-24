# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.

puts "Enter number of groups"
group_num = gets.chomp.to_i
groups = Array.new(group_num) { [] }

puts "Give me a name"
count = 0
while input_name = gets.chomp
  if input_name == "stop"
    break
  else 
    puts "Give me a name"     
    groups[count] << input_name
    count += 1
    count = 0 if count == group_num
  end
end

while true
  puts "Enter the number of a group to print out"
  g = gets.chomp
  if g == "stop"
    break
  else
    selected_group = groups[(g.to_i - 1)]
    puts selected_group.join(", ")
  end
end