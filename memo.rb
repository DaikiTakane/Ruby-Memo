require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 
memo_type = gets.chomp

if memo_type == "1"
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.to_s
    file = File.open("#{file_name}.csv","w")
    puts "内容を記入してください"
    puts "完了したらctrl + Dを押してください"
    memo_message = readlines
    file.puts (memo_message)
    
elsif memo_type == "2"
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.to_s
    file = File.open("#{file_name}.csv","a")
    puts "内容を記入してください"
    puts "完了したらctrl + Dを押してください"
    memo_message = readlines
    file.puts (memo_message)
    
else
    puts "1(新規でメモを作成)か2(既存のメモを編集する)を入力してください"
end