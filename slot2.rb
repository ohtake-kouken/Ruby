
puts "-- スロット ---"
puts "残りのコイン数：200"
puts "ポイント 0"
coin = 200
point = 0

while 0<coin do                                     #
  select = [5,10,20,50,"やめとく"]
  num1= [1,2,3,4,5,6,7].to_a.sample(3)      #揃うのが難しい場合調節する   強制 [7,7,7] モード 通常[1,2,3,4,5,6,7]
  num2= [1,2,3,4,5,6,7].to_a.sample(3)     #重複しない３つの数字抽出  確率は等しく12.5%
  num3= [1,2,3,4,5,6,7].to_a.sample(3)     #  "GOD_mode"は乱数調整の余裕があれば作る予定

  puts "何コイン入れますか？"
  puts "0(5コイン),1(10コイン),2(20コイン),3(勝負の50コイン),4(やめる）"
  puts "-------------"
  putin = gets.to_i

  if putin == 4
    puts "またチャレンジしてね！"
    break
  elsif coin < select[putin]
    puts "#{select[putin]-coin}コイン足りないよ。"
    break
  end

  puts "エンターを3回押して数字を揃えよう！" 
  puts = gets
  puts "-------------"
  puts "|#{num1[0]}| | |"
  puts "|#{num1[1]}| | |"
  puts "|#{num1[2]}| | |"
  puts = gets
  puts "-------------"
  puts "|#{num1[0]}|#{num2[0]}| |"
  puts "|#{num1[1]}|#{num2[1]}| |"
  puts "|#{num1[2]}|#{num2[2]}| |"
  puts = gets
  puts "-------------"
  puts "|#{num1[0]}|#{num2[0]}|#{num3[0]}|"
  puts "|#{num1[1]}|#{num2[1]}|#{num3[1]}|"
  puts "|#{num1[2]}|#{num2[2]}|#{num3[2]}|"

  if (num1[0]==7)&&(num2[0]==7)&&(num3[0]==7)||(num1[1]==7)&&(num2[1]==7)&&(num3[1]==7)||(num1[2]==7)&&(num2[2]==7)&&(num3[2]==7)||(num1[0]==7)&&(num2[1]==7)&&(num3[2]==7)||(num1[2]==7)&&(num2[1]==7)&&(num3[0]==7)
    case putin
     when 0 then                        # 5コインの場合
      puts "ラッキーセブン!！"
      puts "50コイン獲得！"
      puts "100ポイント獲得！"
      puts "-------------"
      coin = coin + 50 - select[putin]
      point = point + 100
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 1 then                       # 10コインの場合
      puts "ラッキーセブン!！"
      puts "100コイン獲得！"
      puts "200ポイント獲得！"
      puts "-------------"
      coin = coin + 100 - select[putin]
      point = point + 200
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 2 then                        # 20コインの場合
      puts "ラッキーセブン!！"
      puts "200コイン獲得！"
      puts "400ポイント獲得！"
      puts "-------------"
      coin = coin + 200 - select[putin]
      point = point + 400
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 3 then                        # 50コインの場合
      puts "ラッキーセブン!！"
      puts "250コイン獲得！"
      puts "500ポイント獲得！"
      puts "-------------"
      coin = coin + 250 - select[putin]
      point = point + 500
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     end
    elsif (num1[0]==num2[0])&&(num2[0]==num3[0])&&(num1[1]==num2[1])&&(num2[1]==num3[1])&&(num1[2]==num2[2])&&(num2[2]==num3[2])
     case putin
      when 0 then                           # 5コインの場合
       puts"トリプルライン‼︎"
       puts "40コイン獲得！"
       puts "70ポイント獲得！"
       puts "-------------"
       coin = coin + 40 - select[putin]
       point = point + 70
       puts "残りのコイン数：#{coin}"
       puts "獲得ポイント#{point}"
      when 1 then
       puts "トリプルライン‼︎"
       puts "80コイン獲得！"
       puts "140ポイント獲得！"
       puts "-------------"
       coin = coin + 80 - select[putin]
       point = point + 140
       puts "残りのコイン数：#{coin}"
       puts "獲得ポイント#{point}"
      when 2 then
       puts "トリプルライン‼︎"
       puts "160コイン獲得！"
       puts "280ポイント獲得！"
       puts "-------------"
       coin = coin + 160 - select[putin]
       point = point + 280
       puts "残りのコイン数：#{coin}"
       puts "獲得ポイント#{point}"
      when 3 then
       puts "トリプルライン‼︎"
       puts "400コイン獲得！"
       puts "700ポイント獲得！"
       puts "-------------"
       coin = coin + 400 - select[putin]
       point = point + 700
       puts "残りのコイン数：#{coin}"
       puts "獲得ポイント#{point}"
     end
    elsif(num1[0]==num2[0])&&(num2[0]==num3[0])&&(num1[1]==num2[1])&&(num2[1]==num3[1])||(num1[0]==num2[0])&&(num2[0]==num3[0])&&(num1[2]==num2[2])&&(num2[2]==num3[2])||(num1[1]==num2[1])&&(num2[1]==num3[1])&&(num1[2]==num2[2])&&(num2[2]==num3[2])
     case putin
     when 0 then                           # 5コインの場合
      puts"ダブルライン‼︎"
      puts "30コイン獲得！"
      puts "50ポイント獲得！"
      puts "-------------"
      coin = coin + 30 - select[putin]
      point = point + 50
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 1 then
      puts "ダブルライン‼︎"
      puts "60コイン獲得！"
      puts "100ポイント獲得！"
      puts "-------------"
      coin = coin + 60 - select[putin]
      point = point + 100
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 2 then
      puts "ダブルライン‼︎"
      puts "100コイン獲得！"
      puts "200ポイント獲得！"
      puts "-------------"
      coin = coin + 40 - select[putin]
      point = point + 120
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 3 then
      puts "ダブルライン‼︎"
      puts "250コイン獲得！"
      puts "500ポイント獲得！"
      puts "-------------"
      coin = coin + 250 - select[putin]
      point = point + 500
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     end
    elsif (num1[0]==num2[0])&&(num2[0]==num3[0])||(num1[1]==num2[1])&&(num2[1]==num3[1])||(num1[2]==num2[2])&&(num2[2]==num3[2])
    case putin
     when 0 then                           # 5コインの場合
      puts "ワンライン!!"
      puts "10コイン獲得！"
      puts "30ポイント獲得！"
      puts "-------------"
      coin = coin + 10 - select[putin]
      point = point + 30
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 1 then
      puts "ワンライン!!"
      puts "20コイン獲得！"
      puts "60ポイント獲得！"
      puts "-------------"
      coin = coin + 20 - select[putin]
      point = point + 60
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 2 then
      puts "ワンライン!!"
      puts "40コイン獲得！"
      puts "120ポイント獲得！"
      puts "-------------"
      coin = coin + 40 - select[putin]
      point = point + 120
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
     when 3 then
      puts "ワンライン!!"
      puts "100コイン獲得！"
      puts "300ポイント獲得！"
      puts "-------------"
      coin = coin + 100 - select[putin]
      point = point + 300
      puts "残りのコイン数：#{coin}"
      puts "獲得ポイント#{point}"
    end
  elsif (num1[0]==num2[1])&&(num2[1]==num3[2])||(num1[2]==num2[1])&&(num2[1]==num3[0])
    case putin
    when 0 then                           # 5コインの場合
     puts "斜めライン!!"
     puts "10コイン獲得！"
     puts "20ポイント獲得！"
     puts "-------------"
     coin = coin + 10 - select[putin]
     point = point + 20
     puts "残りのコイン数：#{coin}"
     puts "獲得ポイント#{point}"
    when 1 then
     puts "斜めライン!!"
     puts "20コイン獲得！"
     puts "40ポイント獲得！"
     puts "-------------"
     coin = coin + 20 - select[putin]
     point = point + 40
     puts "残りのコイン数：#{coin}"
     puts "獲得ポイント#{point}"
    when 2 then
     puts "斜めライン!!"
     puts "40コイン獲得！"
     puts "80ポイント獲得！"
     puts "-------------"
     coin = coin + 40 - select[putin]
     point = point + 80
     puts "残りのコイン数：#{coin}"
     puts "獲得ポイント#{point}"
    when 3 then
     puts "斜めライン!!"
     puts "100コイン獲得！"
     puts "200ポイント獲得！"
     puts "-------------"
     coin = coin + 100 - select[putin]
     point = point + 200
     puts "残りのコイン数：#{coin}"
     puts "獲得ポイント#{point}"
   end
  else
    puts "-------------"
    puts "残念！もう一回挑戦しよう！"
    coin = coin - select[putin]
    puts "残りのコイン数：#{coin}"
    puts "獲得ポイント#{point}"
  end

end

if putin[4]&&(coin==200)&&(point==0)
  puts "え……冷やかし…？"
elsif putin[4]&&(point<=100)
  puts "次回頑張ろう"
elsif putin[4]&&(point>100&&point<=200)
  puts "スロットのセンスあるね"
elsif putin[4]&&(point>200&&point<=300)
  puts "このゲームに夢中になってるの？"
elsif putin[4]&&(point>300)
  puts "天才…"
end



