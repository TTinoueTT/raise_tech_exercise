
class Communication
 # attr_accessor :friends, :working_mate
 def initialize(friends, working_mate)
  # @working_mate = working_mate
   # @friends_somebody = friends.shuffle[1]
   @work_somebody = working_mate.shuffle[1]
   # @delicate_relation = working_mate.shuffle[1] #微妙な関係
 end

 def work_name
   @work_somebody

 end

end

friends = ["Bob","Ron","Ellie","Tom","Mike"] #友人
working_mate = ["Kondo","Yasuda"] #仕事仲間

cmc = Communication.new(friends, working_mate)
p cmc.work_name


# /usr/local/Cellar/readline/8.0.4/lib/libreadline.dylib
#
# /Users/toshiroinoue/.rbenv/versions/2.5.3/lib/ruby/2.5.0/x86_64-darwin19/readline.bundle
#
# /Users/toshiroinoue/.rbenv/versions/2.5.3/lib/libruby.2.5.dylib
