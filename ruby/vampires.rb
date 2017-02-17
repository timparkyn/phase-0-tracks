puts "How many new employees today?"
employees = gets.chomp.to_i

counter = 0
allergies = ""

while counter < employees

	puts "What is your name?"
	fname = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	bread = gets.chomp

	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp



	if allergies =! "done"

		puts "Do you have any suspicious allergies?"
		allergies = gets.chomp

		if allergies == "sunshine"
			puts "Probably a vampire"
		end

		
	end

			



	#vampire_detector ("juan", "20", "1984", "yes", "yes")

	if age == (2017 - year) && ( bread == "yes" || insurance == "yes")
			puts "Probably not a vampire"

		elsif age != (2017 - year) && ( bread != "yes" || insurance != "yes")
			puts "Probably a vampire"

		elsif age != (2017 - year) && (bread != "yes" && insurance != "yes")
			puts "Almost certainly a vampire"

		elsif fname == "Drake Cula" || fname == "Tu Fang"
			puts "Definitely a vampire"

		else 
			puts "Results inconclusive"

	end

	counter += 1

end

