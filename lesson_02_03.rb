# ------------------------------------------------------------------
# 配列を扱う。任意の配列に値を詰め込んで、その内容をコンソールに表示。
# 配列に入れる型を色々変えて遊ぶ

winter_sports = [ 'Skiing', 'IceSkating','Snowmobile','IceHockey','Curling' ]
# p winter_sports[1,2]
# p winter_sports
# winter_sports.each {|i| puts i }
# p winter_sports.include?('Skiing')  #引数は1つ true/false
# p winter_sports.empty?  #引数はなし
# p winter_sports.reverse
# p winter_sports.reverse!
# num = [1,2,3,4,5,rand(1..7)]  #乱数コミの整数
# shuffle_num = num.shuffle  #配列をシャッフルしたオブジェクト生成
# p shuffle_num.class  #Array
# p shuffle_num.object_id  #
# puts shuffle_num.join  #毎回違う6桁の数字
# puts shuffle_num.join('あ') #数字の間に あ が入る
# p shuffle_num.abc  #数字はダメ
num1_15 = (1..15).to_a
p num1_15.shuffle.size    #２つ目のメソッドだけシャッフルしようがしまいがそりゃ15
# num1_15.pop(3)  #引数の数ぶん末尾から削除
# num1_15.shift(3)  #引数の数ぶん頭から削除
#
# p num1_15
rand_num = [rand(0..2),rand(0..2),rand(0..2),rand(0..2),rand(0..2),rand(0..2)]
p rand_num
p rand_num.uniq

tanaka = { name: 'hajime',age: '36',job: 'musician'}
tanaka[:age] = 30
p tanaka
tanaka.each{ |k, v| print v }
