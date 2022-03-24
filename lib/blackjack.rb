# Write a program that lets a user play a solo game of Blackjack.

def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def score(array)
  score = []
  cards = { "two" => 2, "three" => 3, "four" => 4, "five" => 5, 
            "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, 
            "ten" => 10, "jack" => 10, "queen" => 10, 
            "king" => 10, "ace" => 11 }

  array.each do |card|
    score.push(cards[card])
  end
  score.sum
end

def move
  while true
    puts "Hit or stick: "
    user_input = gets.chomp.downcase
    return "stick" if user_input == "stick"
    return "hit" if user_input == "hit"
  end
end

def run_game
  hand = []
  while true
    turn = move
    if turn == "hit"
      hand.push(random_card)
      puts "Score so far: #{score(hand)}"
    elsif turn == "stick"
      result = score(hand)
      if result <= 21
        puts "You scored: #{result}"
      else
        puts "You busted with: #{result}"
      end
      break
    end  
  end
end

run_game