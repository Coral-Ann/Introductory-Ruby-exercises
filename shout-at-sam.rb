puts "What is your name? "
user_input = gets.chomp

if user_input[0].downcase == "s"
  puts "#{user_input.upcase}!!! >:("
else
  puts "Hi #{user_input.capitalize} :)"
end