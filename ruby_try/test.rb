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

#
# class User
#   attr_accessor :name, :num
#
#
#   def name_array
#     @name
#     @num
#   end
# end
# num = 8
# user = User.new
# user.name = [ 3, 2, 9]
# p user.name_array

class Communication

  def initialize(hello, place)
    @hello = hello
    @place = place
  end
  # 10_Communicationクラスに新しく話しかけてきた人が誰か（同僚とか上司とか）で返答を返すか、
  # 例外を返すような処理を作ってみよう。
  def who_are_you(command)
    who = ["上司","同僚"]
    result = who[command]
    if result == "上司" then
      puts "bot> お疲れ様です"
    elsif result == "同僚" then
      puts "bot> お疲れ"
    else
      puts "bot> 誰？"
    end
  end

  # 06_greetというメソッドを定義してみよう。
  def greet()
    # 08_greetというメソッド内でHelloという言葉を受けたら、Helloと返す 処理を実装してみよう。
    if @hello == "Hello" then
      puts "bot> Hello"
    elsif @hello == "hello"
      puts "bot> Hello"
    else
      puts "bot> Helloと言わないのですか？"
    end
  end
  # 09_職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶しないようにしてみよう
  def workplace()
    if @place == "office" then
      puts "bot> 今日も一日頑張りましょう！"
    elsif @place == "yes"
      puts "bot> 今日も一日頑張りましょう！"
    else
      puts "bot> ちゃんと働け"
    end
  end
end

puts "bot> 上司:0  同僚:1  ですか？数字で回答して下さい"
command = gets.chomp.to_i

puts "bot> Helloと言ってください"
hello = gets.chomp

puts "bot> 今、office でしょうか？"
place = gets.chomp

ask = Communication.new(hello, place)
ask.who_are_you(command)
ask.greet()
ask.workplace()
