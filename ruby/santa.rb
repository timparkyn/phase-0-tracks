class Santa

	### R4 ------------------------

	# attr_reader 

	attr_accessor :gender, :age, :ethnicity


	### R0 ------------------------

	def initialize(gender, ethnicity)

		p 'Initializing Santa instance...'
	
		### R1 ---------------------
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzer']
		@age = rand(141)

	end


	def speak

		puts 'Ho, ho, ho! Haaaaappy holidays!'

	end


	def eat_milk_and_cookies(cookie)

		puts "That was a delicious #{cookie}"

	end


	def celebrate_birthday

		age +=1

	end


	def get_mad_at(name)

		counter = @reindeer_ranking.index name

		# puts counter
		
		while counter < @reindeer_ranking.count

			@reindeer_ranking[counter] = @reindeer_ranking[counter+1]

			counter +=1
		end

		@reindeer_ranking[@reindeer_ranking.count-1] = name

	end

	### R2 ---------------------

	## getter methods ##

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	

	# ## setter methods ##

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

end





claus = Santa.new('fluid', 'trustafarian')

claus.speak

claus.eat_milk_and_cookies('magic brownie')

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

puts "!!there are now #{santas.length} santas!!"



santas.each do |santa|
	puts santa.gender + "  " + santa.ethnicity + "  " + santa.age.to_s
end




santas << Santa.new("Cyrus", "dog")
santas << Santa.new("Franky", "cat")

puts "there are now #{santas.length} santas"

example_genders.length.times do |i|
	puts example_genders[i] + " ^  ^ " + example_ethnicities[i]
end


puts santas.length



claus.get_mad_at('Vixen')

#santa.get_mad_at('Vixen')
# santas.get_mad_at('Vixen')
# get_mad_at('Vixen')
# 

# puts @reindeer_ranking





### R4 ---------------------------
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"


# make 100 new santas with randome gender and ethnicities
# change initialize to make age random up to 140
100.times do

	santas << Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])

end

puts "end"

puts "***"

# print out each santa
santas.each do |santa|
	puts santa.gender + "  " + santa.ethnicity + "  " + santa.age.to_s
end




































