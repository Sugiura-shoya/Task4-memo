require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_s

if memo_type <= "3"
  if memo_type < "2"
    puts "拡張子を除いたファイル名を入力して下さい。\n"
    
    file_name = gets.chomp.to_s
    
    puts "メモしたい内容を入力して下さい。"
    puts "完了したら[Control＋D]を押して下さい。"
    
    file_text = STDIN.read
    
    CSV.open(file_name + ".csv",'w') do |csv|
     csv << [file_text]
    end
  
  else
    puts "編集したいファイル名（拡張子を除く）を入力して下さい。\n"
    
    file_name_1 = gets.chomp.to_s
    
    puts "メモしたい内容を入力して下さい。"
    puts "完了したら[Control＋D]を押して下さい。"
    
    file_text_1 = STDIN.read
    
    CSV.open(file_name_1 + ".csv", 'a+') do |csv|
     csv << [file_text_1]
    end
    
  end
  
else
  puts "入力間違いです。終了します。"
  
end
