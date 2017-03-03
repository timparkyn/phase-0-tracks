# user enters word




class Jeopardy
# Number of guesses = word.length


	attr_reader 

	attr_accessor :word_array, :guess_array, :guesses, :word

	def initialize(word)

		puts "i n i t i a l i z i n g . . ."

		@word = word
		@word_array = []
		@guess_array = []
		@guess_count = word.length
		# puts word.split('')
		@word_array = word.split('')
		# puts @word_array[2]
		# puts @guess_count

		@word_array.each do |index|

			@guess_array << "_"

		end

		# puts @guess_array

	end

	def show_me

		@word_array

	end

	def show_me_guess(index)

		@guess_array[index]

	end

	def index_me(index)

		word_array[index]

	end


	def guesses(number)
		# guess_counter = 0

		

		


	end	


	# No penalty for each guess

	# When user guesses letter, that letter will show in context of word
	## need to add logic for multiple correct letters with single guess
	def check_guess(guess)
		guess_flag = false
		counter = 0
		puts @word.length

		while counter < @word.length-1
			puts word_array
			puts guess

			if @word_array[counter] == guess
				@guess_array[counter] = guess
				puts "Correct!"
				guess_flag = true


			end

			counter += 1

		end

		puts guess_array
		@guess_count = @guess_count - 1

		if guess_flag == false
			puts "Fail"
		end
		# winlose

	end


	def winlose

		# while guess_array != word_array

		# 	puts "try again"


		# else 

		# 	break


		# end



		# if guess_count == 0 and word_array != guess_array
		# 	puts "That was your last guess. You'll never amount to anything."


		# elsif guess_array.length == word_array.length

		# 	puts "You win, you magnificent bastard."

		# end

	
		
	end
end




# If win = congratulate, if lose = taunting message












## -------------------------------------- ##

puts "It's time to play the game"



# puts 'Player 1, enter a word:'
# # word = gets.chomp
game = Jeopardy.new('alameda')



## guess routine ---------------------

guess_counter = @word.length

while guess_counter < 


game.check_guess('a')

puts @guess_array


# puts game.show_me_guess


# # puts game.@guess_count
# puts "test"
# # puts @word_array(0)
# # p word.guesses


# # puts 'Player 2, enter a guess'
# # guess = gets.chomp







