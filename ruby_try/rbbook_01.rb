# puts "こんにちは\nさようなら" #改行を適用するにはダブルクォーテーション
# name = 'Alice'
# puts 'Hello,'+name+'!'  #式展開を使わず変数を埋め込む
# p 'a' < 'b' ; p 'a' < 'A'  #文字コードの大小比較
# p 1 / 2 #0.5ではなく0になる
# n = 2 ; p n *= 3 ; p n /= 2 ; p n **= 2
# p 0.1 * 3.0  #0.30000000000000004
# p 0.1r * 3r  #Rational(有理数)クラスを使い値を返す(3/10)
# p 0.1.rationalize  #(1/10)

# def greeting(country)  #引数を使用
#   return 'countryを入力してください' if country.nil?
#   if country == 'japan'
#     'こんにちは'
#   else
#     'hello'
#   end
# end
#
# p greeting(nil)
# p greeting('japan')

# def fizz_buzz(n)
#   if n % 3 == 0
#     'Fizz'
#   else
#     n.to_i
#   end
# end
#
# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
#
# puts %q!Hello!  ; puts %Q!Hello!
#
# class Product
#   @name = 'Product'
#
#   def self.name
#     @name
#   end
#
#   def initialize(name)
#     @name = name
#   end
#
#   def name
#     @name
#   end
# end
#
# p Product.name
# product = Product.new('A great movie')
# p product.name
# p Product.name
# ------------------------------------
# # ------------------------------------

# # ------------------------------------
text = <<-TEXT
You say yes. - @jnchito 8s
I say no. - @BarackObama 12m
You say stop. - @dhh 7h
I say go go go. - @ladygaga Feb 20
Hello, goodbye. - @BillGates 11 Apr 2015
TEXT
puts text.gsub(/^(.+) - (@\w+) (\d+[smh]|(?:\d+ )?[A-Z][a-z]{2} \d+)/,
'\1, \2, \3,')
