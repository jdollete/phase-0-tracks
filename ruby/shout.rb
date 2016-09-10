# Method Code
#
# module Shout
#   def self.yell_angrily(words)
#     words.upcase + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words.upcase + "!!!" + " :)"
#   end
#
# end

# Driver Code
# p Shout.yell_angrily("What in the....")
# p Shout.yell_happily("Congrats")




# Method Code
# Create module to shout
# Create two classes of people who shouts

module Shout
  def shout_at(name, activity)
    puts "#{name.upcase}, #{activity.upcase}!"
  end
end

class Parent
  include Shout
end

class Soldier
  include Shout
end

# Driver Code
# Call out two instances

mary = Parent.new
mary.shout_at("Billy", "Go clean your room")

captain = Soldier.new
captain.shout_at("private", "give me 50 pushups")
