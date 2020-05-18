# ------------------------------------------------------------------------------
class Communication
  require "date"
  # attr_accessor :friends, :working_mate
  def initialize(friends)
    @friends_somebody = friends.shuffle[1]
  end

  def  greeting_change    #時間によって挨拶が変わる
    now = DateTime.now
    now_time = now.hour

    if (7..11).include?(now_time) #7時 ~ 11時台
      "Good morning!"
    elsif (12..17).include?(now_time)  #12時 ~ 17時台
      "Hello"
    elsif (18..22).include?(now_time)  #18時 ~ 22時台
      "Good evening!"
    else
      raise ArgumentError, "話しかけるのは7:00~22:59の間にしてください"
    end

  end

  def greet
    puts "A:#{greeting_change}"  #Helloからの
    retry_count = 0
    begin
      res_greet = gets.chomp       #Helloを返す処理
      raise if res_greet != greeting_change   #例外処理
    rescue
      retry_count += 1
      if retry_count <= 3
        puts "A:Would u say '#{greeting_change}'."  #同じ挨拶をしてください
        retry
      else
        raise ArgumentError,"A:Can u n't even speak the greetings?" #挨拶もできないんですか？
      end
    end
  end


  def second_res
    if @response_ur_place == @place_1
      puts "#{@friends_somebody}:Surprised suddenly? I'm #{@friends_somebody}!!"
      puts "Long time no see! How are u #{@friends_somebody}!?"
    end
  end

end
# --------↓仕事のコミュニケーション↓------------------------------------------------
class WorkplaceCommunication < Communication
  def initialize(working_mate)
    @work_somebody = working_mate.shuffle[1]
    @delicate_relation = working_mate.shuffle[1] #微妙な関係
  end


  def second_res
    if @response_ur_place == @place_2
      puts "#{@work_somebody}:sorry, that I interrupted work.I'm #{@work_somebody}"  #  お仕事中、恐れ入ります
    end

    if @work_somebody == @delicate_relation
      puts "I don't want to talk with u !!"  #微妙な関係の人と話したくない！
    else
      puts "Mr.#{@work_somebody},I hope to work with you"  #お世話になります
    end
  end

end
#---------↓外部からのインサート↓----------------------------------------------------

friends = ["Bob","Ron","Ellie","Tom","Mike"] #友人
working_mate = ["Kondo","Yasuda"] #仕事仲間
place_1 = "private time"
place_2 = "working"
cmc = Communication.new(friends)
w_cmc = WorkplaceCommunication.new(working_mate)

def where_are_u(place_1,place_2)
  retry_count_a = 0
  @place_1 = place_1
  @place_2 = place_2
  begin
    p @response_ur_place = gets.chomp    # プライベートです か 就業中です で返答してね
    raise if @response_ur_place != @place_2 && @response_ur_place != @place_1 #例外処理
  rescue
    retry_count_a += 1
    if retry_count_a <= 3
      puts "A:Would u say #{@place_1} or #{@place_2}?"  #同じ挨拶をしてください
      retry
    else
      raise ArgumentError,"A:Can u n't even speak ur staying place?" #挨拶もできないんですか？
    end
  end
end

# ---------↓実行処理↓------------------------------------------------------------
cmc.greet      #時間帯によって変わる挨拶
puts "A:Are you working now? Is it private time?"  #仕事中かプライベートか聞く
where_are_u(place_1 , place_2)   #場所を決めるメソッド
if @response_ur_place == place_1  #返答を条件分岐するメソッド
  cmc.second_res
else
  w_cmc.second_res
end
