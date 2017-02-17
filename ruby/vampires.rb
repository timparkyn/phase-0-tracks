


def vampire_detector

	if age == (2017 - year) && ( bread = "yes" || insurance = "yes")
		puts "Probably not a vampire"

	elseif age != (2017 - year) && ( bread != "yes" || insurance != "yes")
		puts "Probably a vampire"

	elseif age != (2017 - year) && bread != "yes" && insurance != "yes"
		puts "Almost certainly a vampire"

	elseif name = "Drake Cula" or "Tu Fang"
		puts "Definitely a vampire"

	else 
		puts "Results inconclusive"

	end

end

name = ""
age = 0
year = 0
bread =""
insurance=""


puts "What is your name?"
name = gets.chomp

vampire_detector

puts "How old are you?"
age = gets.chomp

vampire_detector

puts "What year were you born?"
year = gets.chomp

vampire_detector

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
bread = gets.chomp

vampire_detector

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

vampire_detector


