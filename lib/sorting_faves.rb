# Write a program that groups people based on their favourite things.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]
players_by = {}
puts "Enter category to group people by (fruit/sport):"
user_input = gets.chomp.downcase

people.each do |player|
  sport = player["sport"]
  fruit = player["fruit"]

  if user_input == "sport"
    if players_by[sport] == nil
      players_by[sport] = []
    end
    players_by[sport].push(player["name"])
  elsif user_input == "fruit"
    if players_by[fruit] == nil
      players_by[fruit] = []
    end
    players_by[fruit].push(player["name"])
  end
end
puts players_by.to_a