require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s
# 続きを書いていきましょう！！(ifで条件分岐)

if memo_type.chomp == "1"
 puts "拡張子を除いたファイル名を入力してください。"
 file_name = gets.chomp
 
 p "メモしたい内容を記入してください。"
 p "完了したらCtrl + Dを押してください。"
 memo_contents = readlines(chomp:true)
 
 CSV.open("#{file_name}.csv",'w',)do |csv|
  csv << memo_contents
 end
end



if memo_type.chomp =="2"
 puts "既存のメモを編集します。"
 puts "拡張子を除いた編集したいファイル名を入力してください。"
 file_name = gets.chomp
 p "追記内容を記入してください。"
 p "完了したらCtrl + Dを押してください。"
 add_contents = readlines(chomp:true)
 
 CSV.open("#{file_name}.csv",'a',)do |csv|
  csv << add_contents
 end
end