#Communicationというクラスを作ってみよう。
class Communication
  attr_accessor :morninng, :noon, :evening
#greetというメソッドを定義してみよう。
#greetというメソッド内でHelloという言葉を受けたら、Helloと返す処理を実装してみよう。
  def greed
    puts "Please say hello"
    call = gets  #getsはデフォルトで文字列を返す、数値の場合は.to_i
    if call == "hello\n"  #入力データを puts でなく p で確認 # @変数は使い方を確認してみるといいですね
      puts "hello"
    end
  end
end
communication = Communication.new
     #↑オブジェクトの頭文字は大文字にできない 変数名とclass名が一緒になっているとできない?
communication.greed
