### Release 1 ---------------------------

# module Shout

# 	def self.yell_angrily(words)
# 	 	words + "!!!" + " :("
#  	end

# 	def self.yell_happily(words)
#     	":) :) :) " + words + "!!!" + " :) :) :)"
#  	end

# end


# ### driver code
# puts Shout.yell_angrily('fuckin a')

# puts Shout.yell_happily('fuck yeah')


#### Release 3 -------------------------------
module Shout

	def yell_angrily(words)
	 	words + "!!!" + " :("
 	end

	def yell_happily(words)
    	words + "!" + " :) :) :)"
 	end


end


class Kid
	include Shout
end

class Fan
	include Shout
end


kid = Kid.new
puts kid.yell_angrily('F this shit')
puts kid.yell_happily('Recess')

fan = Fan.new
puts fan.yell_angrily("What's the matter with you, Ump")
puts fan.yell_happily('We did it')
