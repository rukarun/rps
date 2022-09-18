#じゃんけんメソッド
def rps
  hands_name = ["グー","チョキ","パー"]
  np_hands = rand(2)
  
  puts "じゃんけんをしましょう\nグーなら 0\nチョキなら 1\nパーなら 2 を入力してください"
  p_hands = gets.to_i
  puts "あなた:#{hands_name[p_hands]}\n相手:#{hands_name[np_hands]}"
  
  if p_hands == np_hands
    puts "あいこ"
    return true
  elsif(p_hands == 0 && np_hands == 1)||(p_hands == 1 && np_hands == 2)||(p_hands == 2 && np_hands == 0)
    $hands_vod = "victory"
    puts "あなたの勝ち"
    return false
  else
    $hands_vod = "defeat"
    puts "あなたの負け"
    return false
  end
end

#あっち向いてホイメソッド
def loth
  udlf_name = ["上","下","左","右"]
  np_udlf = rand(3)
  
  puts "あっち向いて━━━━\n上なら 0\n下なら 1\n左なら 2\n右なら 3 を入力してください"
  p_udlf = gets.to_i
  puts "あなた:#{udlf_name[p_udlf]}\n相手:#{udlf_name[np_udlf]}"
  
  if p_udlf == np_udlf && $hands_vod == "victory"
    puts "あなたの勝ち"
    return false
  elsif p_udlf == np_udlf && $hands_vod == "defeat"
    puts "あなたの負け"
    return false
  else
    puts "じゃんけんからやり直し"
    return true
  end
end

#じゃんけんアプリメソッド（あっち向いてホイつき）
def game
  if rps == true
    return true
  elsif loth == true
    return true
  else
    return false
  end
end


next_game = true
while next_game
  next_game = game
end
