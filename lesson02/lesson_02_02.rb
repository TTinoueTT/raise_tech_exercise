# ------------------------------------------------------------------
# コンソールに引数が0なら偽、引数が1なら真と表示
# if文で表現できる。出来ればメソッドを用意

def umpire
  num = rand(0..1)
  if num == 0
    false
  else
    true
  end
end

p umpire    #if文内の処理は適切でしょうか？


# def umpire
#   num = 0
#   if num == 0
#     p false
#   end
#
#   if num == 1
#     p true
#   end
# end
#
# p umpire    #こちらは初期のメソッド内のif文が両方反応してしまう



# num_a = rand(0..1)
p rand(0..1) == 1 ? true : false    #三項演算子でできる？
