loop do
  puts '-----------------------------------------------'
  puts "じゃんけんの女神、ハマーベー・ミナーミーが現れた。"
  puts "私とデートしたいならじゃんけんとあっち向いてホイで勝ったみなさい"
　puts "勝負する:1逃げる:2"
　
　choice = gets.chomp.to_i

  case choice
    when '1'
      puts '-----------------------------------------------'
      puts 'グー:1 チョキ:2 パー:3'
      puts "じゃんけん...."
      
      my_hand=gets.chomp.to_i
      enemy_hand=rand(1..3)

      if my_hand==enemy_hand
        puts "あなた:#{my_hand} ミナーミー:#{enemy_hand}"
        puts "引き分けざます。"
      elsif (my_hand==1 && enemy_hand==2) || (my_hand==2 && enemy_hand==1) || (my_hand==3 && enemy_hand==1) 
        puts "あなた:#{my_hand} ミナーミー:#{enemy_hand}"
        puts "あなたの勝ちよ。仕方ないわね、デートは一回だけよ"
      else
        puts "あなた:#{my_hand} ミナーミー:#{enemy_hand}"
        puts "あなたの負けよ。わたしとデートなんて一万年はやいわ。"
      end
    when '2'
      puts"------------------------------------------------"
      puts"あら、私とデートしたくないのかしら。。。"
      break
    else
      puts "1,2のいずれかを選択してください"
      end

end
