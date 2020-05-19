
# 職場じゃなければ挨拶しないようにしてみよう（酷い）
# •Communicationクラスに新しく話しかけてきた人が誰か
# (同僚とか上司とか)で応答を返すか、例外を返すような処理を作ってみよう。
# •例外の条件や例外じゃなかった場合にどういった応答を返すかは好きなように作ってOK。
# •例外クラスは自作も可能。
# 何か面白い例外を継承して、勝手に自作してもいいし、既存の例外クラスを使ってもいい。
# とにかく例外をraiseしてみよう。
# ------------------------------------------------------------------
require "date"   #Dateクラスを使えるようにする
#普段のコミュニケーションclass↓-----------------------------------------
class Communication
  attr_accessor :friends, :working_mate

  now = DateTime.now
  @@now_time = now.hour

  # def initialize(friends_name)
  #   @friends_name = friends_name
  # end

  def greet #時間によって挨拶が変わる
    if @@now_time <= 7  #0時 ~ 7時台
      'zzZZ'
    elsif @@now_time <= 12  #8時 ~ 12時台
      'おはよう'
    elsif @@now_time <= 17  #13時 ~ 17時台
      'こんにちは'
    elsif @@now_time <= 21  #18時 ~ 21時台
      'こんばんは'
    else
      'おやすみなさい'  #それ以外の時間
    end
  end

  def when_said_hello
    friends_someb = @friends.shuffle[1]  #挨拶をした時
    puts "#{friends_someb}、#{greet}"
  end
end

#職場でのコミュニケーションclass↓----------------------------------------
class WorkplaceCommunication < Communication
  # def initialize(work_name, delicate_name)
  #   @work_name = work_name
  #   @delicate_name = delicate_name
  # end

  def greet #時間によって挨拶が変わる
    if @@now_time <= 7 #0時 ~ 7時台
      'zzZZ'
    elsif @@now_time <= 12 #8時 ~ 12時台
      'おはようございます'
    elsif @@now_time <= 17 #13時 ~ 17時台
      'お疲れ様です'
    elsif @@now_time <= 21 #18時 ~ 21時台
      'お疲れ様でした、お先に失礼いたします'
    else
      '時間外に話しかけないでください'
    end
  end

  def when_said_hello   #挨拶をした時
    work_someb = @working_mate.shuffle[1]
    delicate_relation = @working_mate.shuffle[1] #微妙な関係

    p work_someb
    puts "#{work_someb}さん、#{greet}" if work_someb != delicate_relation
  end
end
# where_are_u_say_hello rescue puts '申し訳ございません'  #class内は作動、メソッド内はダメ

# ------------------------------------------------------------------
#実行処理エリア
$cmc = Communication.new
$cmc.friends = ["Bob","Ron","Ellie","Tom","Mike"] #友人

$work_cmc = WorkplaceCommunication.new
$work_cmc.working_mate = ["Kondo","Yasuda"] #仕事仲間

def where_are_u_say_hello  #どこで挨拶する/職場かどうかを判断するメソッド
  num = rand(0..1)
  place = num == 0 ? 'Working_p' : 'private_p'  #ランダムに場所を設定
  if place == 'Working_p'
    $cmc.when_said_hello
  else
    $work_cmc.when_said_hello
  end
end


where_are_u_say_hello



#    '申し訳ございません' workaholic

# ------------------------------------------------------------------
