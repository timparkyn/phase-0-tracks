module Shout

	def self.yell_angrily(words)
	 	words + "!!!" + " :("
 	end

	def self.yell_happily(words)
    	":) :) :) " + words + "!!!" + " :) :) :)"
 	end

end





### driver code


puts Shout.yell_angrily('fuckin a')

puts Shout.yell_happily('fuck yeah')