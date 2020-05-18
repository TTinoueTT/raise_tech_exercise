# ------------------------------------------------------------------
require "date"   #Dateクラスを使えるようにする
#普段のコミュニケーションclass↓-----------------------------------------
class Communication
  # attr_accessor  :
  now = DateTime.now
  @@now_time = now.hour


  greeting_change =    #時間によって挨拶が変わる
    if @@now_time <= 7  #0時 ~ 7時台
      "zzZZ"
    elsif @@now_time <= 12  #8時 ~ 12時台
      "おはよう"
    elsif @@now_time <= 17  #13時 ~ 17時台
      "こんにちは"
    elsif @@now_time <= 21  #18時 ~ 21時台
      "こんばんは"
    else
      "おやすみなさい"  #それ以外の時間
    end

  # def greeting_reply
  #   if @now_time <= 7  #0時 ~ 7時台
  #     'そろそろおきんしゃい'
  #   elsif @now_time <= 12  #8時 ~ 12時台
  #     'いってらっしゃい'
  #   elsif @now_time <= 17  #13時 ~ 17時台
  #     'お元気そうで'
  #   elsif @now_time <= 21  #18時 ~ 21時台
  #     'さようなら'
  #   else
  #     'zzZZ'  #それ以外の時間
  #   end
  # end

  def greed
    puts greeting_change
    reply = gets.chomp
    if reply == greeting_change  #同じ答えじゃないと、今は○時ですよ?でもう一度挨拶を求める
      puts 'よくできました！'
    end
    # p raise
  end

end
# 例外処理-----------------------------------------------------------


cmc = Communication.new
cmc.greed
