class Cyrus



	def initialize(gender, ethnicity)

		p 'Initializing Santa instance...'
	
		
		# @gender = gender
		# @ethnicity = ethnicity
		# reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzer']
		# @age = 0


	
	end


	def speak

		p 'Ho, ho, ho! Haaaaappy holidays!'

	end


	def eat_milk_and_cookies(cookie)

		puts "That was a delicious #{cookie}."

	end


end

santas = []
 santas << Cyrus.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas.each {|x,y| puts x,  y}



Cyrus.speak

Cyrus.eat_milk_and_cookies('magic brownie')











