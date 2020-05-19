# ------------------------------------------------------------------
# 変数greetingを定義してそこに値を代入して表示
greeting = "Hello World"
puts greeting
# ------------------------------------------------------------------
# コンソールに1~10までたした結果を表示
sum = 0
(1..10).each {|i| puts sum += i } #足す毎に出力
# (1..10).each {|i| puts(sum += i) ? (i == 10) : next } #足す毎に出力
# (1..10).each{|i| (i == 10) ? puts(sum += i) : nil } #
# (1..10).each {|i| (i == 10) ? (sum += i) : next }

#一度に足して行った値を出力
sum_once = 0
(1..10).each { |n| sum_once += n
  next if n < 10
  puts sum_once
}
