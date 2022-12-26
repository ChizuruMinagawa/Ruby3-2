#じゃんけんぽい
def hand_game
  puts "----------------------------------"
  puts "じゃんけんぽい！"
  puts "グー:0  チョキ:1  パー:2  対戦終了:3"
  
  you_command = gets.to_i
  program_command = rand(3)
  hand_choice = ["グー","チョキ","パー","対戦終了"]
  puts "あなたの手:#{hand_choice[you_command]},相手の手:#{hand_choice[program_command]}"
  
  
  if you_command == program_command
    puts "----------------------------------"
    puts "あいこ"
    return true
    
  elsif (you_command == 0 && program_command == 1)||(you_command == 1 && program_command == 2)||(you_command == 2 && program_command == 0)
    puts "----------------------------------"
    puts "勝ったので指の向きを決めてください"
    @hand_game = "you_win"
    return finger_game
    
    
  elsif (you_command == 1 && program_command == 0)||(you_command == 2 && program_command == 1)||(you_command == 0 && program_command == 2)
    puts "----------------------------------"
    puts "負けたので顔の向きを決めてください"
    @hand_game = "you_lose"
    return finger_game
    
  else you_command = hand_choice[3]
    puts "対戦を終了します"
    exit
  end
end

#あっち向いてホイ
def finger_game

  puts "----------------------------------"
  puts "あっち向いてホイ！"
  puts "上:0  右:1  下:2  左:3"
    
  you_command = gets.to_i
  program_command = rand(4)
    
  finger_choice = ["上","右","下","左"]
  puts "あなたの手:#{finger_choice[you_command]},相手の手:#{finger_choice[program_command]}"
  if (you_command == program_command) && (@hand_game == "you_win")
    puts "----------------------------------"
    puts "あなたの勝ちです。おめでとうございます！"
    exit
  elsif (you_command == program_command) && (@hand_game == "you_lose")
    puts "----------------------------------"
    puts "あなたの負けです。また挑戦してください！"
    exit
  else
    puts "----------------------------------"
    puts "じゃんけんに戻ります"
    return hand_game
  end
end

#じゃんけんあいこならじゃんけん繰り返し
next_game = true
  while next_game
  next_game = hand_game
  end