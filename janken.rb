loop do
  puts '-----------------------------------------------'
  puts "じゃんけんの女神、ハマーベー・ミナーミーが現れた。"
  puts "私とデートしたいならじゃんけんとあっち向いてホイで勝ってみなさい"
  puts "勝負する:1逃げる:2"
  
  choice = gets.chomp

  case choice
    when '1'
      puts '-----------------------------------------------'
      puts 'グー:0 チョキ:1 パー:2'
      puts "じゃんけん...."
      
      my_hand=gets.chomp.to_i
      enemy_hand=rand(3)
      jankens=["グー","チョキ","パー"]

      if my_hand==enemy_hand
        puts "あなた:#{jankens[my_hand]} ミナーミー:#{jankens[enemy_hand]}"
        puts "引き分けざます。"
        puts "あいこで。。。"
        puts "もう一度初めからよ"
      elsif (my_hand==1 && enemy_hand==2) || (my_hand==2 && enemy_hand==1) || (my_hand==3 && enemy_hand==1) 
        puts "あなた:#{jankens[my_hand]} ミナーミー:#{jankens[enemy_hand]}"
        puts "あなたの勝ちよ。あっちむいてホイで勝ってみなさい"
        puts "------------------------------------------------"
        puts "上:0 下:1 右:2 左:3"
        puts "あっちむいて。。。。。"
        
        my_finger=gets.chomp.to_i
        enemy_finger=rand(4)
        attimuite=["上","下","右","左"]
        puts "ホイ"
        puts "--------------------------------"
        puts "あなた:#{attimuite[my_finger]} ミナーミー:#{attimuite[enemy_finger]}を出しました。"
        
        if my_finger==enemy_finger
          puts "あなたの勝ちよ、一回だけデートしてあげる。"
        else
          puts "惜しかったわね。"
          break
          
        end
          
          
      else
        puts "あなた:#{jankens[my_hand]},ミナーミー:#{jankens[enemy_hand]}"
        puts "あなたの負けよ。わたしとデートなんて一万年はやいわ。"
        break
        
      end
    when '2'
      puts"------------------------------------------------"
      puts"あら、私とデートしたくないのかしら。。。"
      break
    else
      puts "1,2のいずれかを選択してください"
      end

end
