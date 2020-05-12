# def a
#   # b #基本的にトップダウンなので定義していないbが呼び出されない
#   def b
#     puts 'B'
#   end
#   # puts 'A'
#   # b  #bメソッドを呼び出し
# end
#
# a #ネストしているメソッド定義はaメソッドで出力がない限りオブジェクトのまま
# b #bメソッドはaメソッドにネストだがbのみ出力可
# num = 78
# $nem = 88
#
# def aiaiai
#   # p num  #適用範囲外
#   p $nem
# end
#
# aiaiai

working_mate = ["Kondo","Yasuda","Saito","Ito","Inoue"] #仕事仲間
work_somebody = working_mate.shuffle[1]
delicate_relation = working_mate.shuffle[1]

p work_somebody
p delicate_relation
