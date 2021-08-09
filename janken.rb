loop do

puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
hands = ["グー","チョキ","パー"]



  player_hand = gets.chomp.to_i
  p_h = player_hand
  
  if hands[p_h] then
    
    puts "ホイ"
    puts "---------------------------"
    puts "あなた：#{hands[p_h]}を出しました"
    
    computer_hand = rand(0..2)
    c_h = computer_hand
    
    puts "相手：#{hands[c_h]}を出しました"
    puts "---------------------------"
    
    if p_h == c_h then
      puts "あいこでしょ"
      
    ##################あっちむいてほい####################
    else
     
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      directions = ["上","下","左","右"]
      
      player_direction = gets.chomp.to_i
      puts "---------------------------"
      
      if directions[player_direction] then
        
        puts "あなた：#{directions[player_direction]}"
        
        computer_direction = rand(0..3)
        
        puts "相手：#{directions[computer_direction]}"
        
        ##################勝敗の判定####################
        if c_h-p_h == 1 || c_h-p_h == -2 then
          if player_direction == computer_direction then
            puts "あなたの勝ち!!"
            break
          else
            puts "---------------------------"
          end
          
        else
          if player_direction == computer_direction then
            puts "あなたの負け!!"
            break
          else
            puts "---------------------------"
          end
        end
        ##################あっち向いてホイ入力ミス####################
      else
        puts "間違ってるよ!最初からね"
      end
    end
      
  ##################ジャンケン拒否####################
  elsif player_hand == 3 then
    puts "ケチんぼ"
    break
  ##################ジャンケン入力ミス####################
  else
    puts "入力が間違っています"
  end
  
end