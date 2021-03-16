puts"じゃんけん…"
def janken
  def attimuite      #勝ちコース
    puts"[0]:上[1]:下[2]:左[3]右"
    player_sides=gets.to_i
    opponent_sides=rand(4)
    attimuites=["上","下","左","右"]
    puts"----------------------"
    puts"あなたの手:#{attimuites[player_sides]},\n相手の手:#{attimuites[opponent_sides]}"
    puts"----------------------"
    if (player_sides==0&&opponent_sides==0)||(player_sides==1&&opponent_sides==1)||(player_sides==2&&opponent_sides==2)||(player_sides==3&&opponent_sides==3)
      puts"〜you win!!〜 あなたの勝利です！"
    else
      puts"じゃんけん続行！"
      return true
    end
  end

  def attimuite2    #負けコース
    puts"[0]:上[1]:下[2]:左[3]右"
    player_sides=gets.to_i
    opponent_sides=rand(4)
    attimuites=["上","下","左","右"]
    puts"----------------------"
    puts"あなたの手:#{attimuites[player_sides]},\n相手の手:#{attimuites[opponent_sides]}"
    puts"----------------------"
    if (player_sides==0&&opponent_sides==0)||(player_sides==1&&opponent_sides==1)||(player_sides==2&&opponent_sides==2)||(player_sides==3&&opponent_sides==3)
      puts"〜you lost!!〜 あなたの負けです！"
    else
      puts"じゃんけん続行！"
      return true
    end
  end

  puts"[0]:グー[1]:チョキ[2]:パー"
  player_side=gets.to_i
  opponent_side=rand(3)
  jankens=["グー","チョキ","パー"]
  puts"----------------------"
  puts"あなたの手:#{jankens[player_side]},\n相手の手:#{jankens[opponent_side]}"
  puts"----------------------"
  if player_side==opponent_side
    puts"あいこで…"
    return true
  elsif (player_side==0&&opponent_side==1)||(player_side==1&&opponent_side==2)||(player_side==2&&opponent_side==0)
    puts"(自分)あっちむいて…"  #勝ち側
    attimuite
  else
    puts"(相手)あっちむいて…"  #負け側
    attimuite2
  end
end

next_try=true
while next_try
  next_try=janken
end