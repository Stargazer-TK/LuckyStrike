#coding: utf-8

puts ""
puts "---LuckyStrike--"
puts ""

# プレイヤー１の名前をを登録してる。
puts "Player1の名前を入れてね"

print "入力:"
player1 = gets.chomp
puts "Player1は#{player1}ですね。了解。"

#一旦次の処理に移るクッション。ボタン押して進ませる。
yobun1 = gets.to_s

#プレイヤー２の名前を登録してる。
puts "Player2の名前を入れてね"

print "入力:"
player2 = gets.chomp 
print "Player2は#{player2}ですね。了解。"

puts ""
yobun8 = gets.chomp

#ここでそれぞれの名前を挿入、表示。
print "じゃあ#{player1}さんと#{player2}さんの運試しを始めます。"
puts ""
puts ""

#ここで繰り返しの部分で使う変数を初期化。合計を出す時に必要になる。てかなった。
player1_num = 0
player1_result = 0
player2_num = 0
player2_result = 0
player1_d = 0
player2_d = 0

#ここで実際にゲームを始める。三回勝負なので三回廻してる。何発目かをブロックパラメータを入れてる。
1.upto(3) do |i|
　　yobun2 = gets.to_s
  puts "#{player1}さんの#{i}発目です。張り切ってどうぞ。"

  yobun3 = gets.to_s

  #ランダムにはじき出される数をここで入れてる。

  
  player1_num = rand 100
  print "#{player1}の出目:#{player1_num}"

  puts ""

  #ここでランダムででた値をresultに挿入してる。
  player1_result = player1_num + player1_result
  #ここで引いた値を新しく入れてる。
  player1_d = player1_result - player2_result
  puts "合計は#{player1_result}です"
  puts "ついでに#{player2}との差は#{player1_d}です。"



  yobun4 = gets.to_s

  puts "続いて#{player2}さんの#{i}発目で。それなりにどうぞ。"

  yobun5 = gets.to_s

  
  player2_num = rand 100
  print "#{player2}の出目:#{player2_num}"
 
  puts ""
  #ここでランダムででた値をresultに挿入してる。
  player2_result = player2_num + player2_result
  #ここで引いた値を新しく入れてる。
  player2_d = player2_result - player1_result
  puts "合計は#{player2_result}です"
  puts "ついでに#{player1}との差は#{player2_d}です。"



end

yobun10 = gets.to_s

#抜け出して結果発表に移動
puts ""
puts "--------------結果発表--------------"

puts ""
yobun10 = gets.to_s

puts "#{player1}さんの合計は#{player1_result}"
puts "#{player2}さんの合計は#{player2_result}"

puts ""
yobun10 = gets.to_s
#ここでresultの中身を比較して負けてた方を煽る。
case
when player1_result > player2_result
  puts "#{player1}さんの勝ち。"
  puts ""
  puts "まだまだねぇ#{player2}ｗｗｗ出直してきなさいｗｗｗｗガハハｗｗｗ"

when player1_result < player2_result
  puts "#{player2}さんの勝ち。"
  puts ""
  puts "#{player1}ｗｗｗｗだっさｗｗｗｗｗぷぅ～クスクスｗｗｗｗ"
end

puts ""
puts ""
puts ""
