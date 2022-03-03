player_me = rand(7) + rand(7)
player_you = rand(7) + rand(7)
me_win = 0
you_win = 0

while me_win && you_win != 2 do
  if player_me > player_you
    me_win += 1
  else
    you_win += 1
  end
end