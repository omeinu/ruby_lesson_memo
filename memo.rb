require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

#################メモの作成####################

if memo_type =="1" then
  puts "拡張子を除いたファイル名を入力してください"
  csv_name = gets.chomp
  csv_name = "#{csv_name}.csv"
  puts "メモしたい内容を記入してください"
  csv_memo = gets.chomp

  CSV.open(csv_name,'w') do |csv|
    csv << [csv_memo]  
  end
  
  puts "#{csv_name}に「#{csv_memo}」と記入しました" 

 #################メモの編集####################

elsif memo_type =="2" then
  puts "拡張子を除いたファイル名を入力してください"
  csv_name = gets.chomp
  csv_name = "#{csv_name}.csv"
  if File.exist?(csv_name) then
    puts "メモを表示します"
    CSV.foreach(csv_name) do |row|
      p row
    end
    
    puts "メモしたい内容を記入してください"
    csv_memo = gets.chomp
    CSV.open(csv_name,"a") do |csv|
      csv << [csv_memo]
    end
    puts "#{csv_name}に「#{csv_memo}」と追記しました"
  else
    puts "ファイル名が間違っています"
  end
 
else
  puts "入力が誤っています"
end