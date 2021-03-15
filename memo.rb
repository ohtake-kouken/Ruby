require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集なければ作成追加) 3ファイルを読み取る"
memo_type = gets.to_i

if memo_type==1 then  #同数の時、
 puts"拡張子を除いたファイルを入力してくだいさい"
     file_name=gets.to_s
     puts"メモしたい内容を入力"
     puts"終わったらcontrol+Dを押します"
     memo_name=readlines
     puts"入力完了！"
     CSV.open("#{file_name}.csv","w")do|csv|   #メモの時 "#{}.txt"で書き換え
     csv<<["#{memo_name}"]
     puts "#{memo_name}"
     end
elsif memo_type==2 then
    puts"既存のメモ編集"
    puts"ファイル名を入力してくだいさい"
    file_name=gets.to_s
    puts"上書きしたい文の入力してください"
    puts"終わったらcontrol+Dを押します"
    memo_name=readlines
    puts"入力完了！"
    CSV.open("#{file_name}.csv","a+")do|csv|
    csv<<["#{memo_name}"]
    end
elsif memo_type==3 then  #同数（１）以外の時、
   puts"ファイルを読み取ります"
   file_name=gets.to_s
   CSV.open("#{file_name}.csv") do |csv|
   p csv.read 
   puts"読み取りされました"
   end
else
  puts"該当以外の番号を打たれたののでもう一度やり直してください"
end

