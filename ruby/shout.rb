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

module Shout

end

class Parent
  include Shout
end

class Soldier
  include Shout
end
