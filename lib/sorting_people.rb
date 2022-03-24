# Write a program that lists the names of people who all like a specific thing.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

names = []
count = 0
puts "Enter what category to search"

while true
  user_input = gets.chomp.downcase
  if count == 0
    count += 1
    puts "Enter what value to search for"
  elsif count == 1
    people.each do |person|
      if user_input == person["sport"]
        names.push(person["name"])
      elsif user_input == person["fruit"]
        names.push(person["name"])
      end
    end
    break
  end
end

puts names