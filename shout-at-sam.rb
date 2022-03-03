puts "What is your name? "
user = gets.chomp

user.chr.downcase == "s" ? (puts "#{user.upcase}!!! >:(") : (puts "Hi #{user.capitalize} :)")