class Hangman
# Number of guesses = word.length


	attr_accessor :word_array, :guess_array, :guesses, :word, :guess_count

	def initialize(word)

		@guess_count = 0

		puts

		puts "i n i t i a l i z i n g . . ."

		puts

		@word = word
		@word_array = []
		@guess_array = []
		@word_array = word.split('')

		# builds player inital blank answer set
		@word_array.each do |index|

			@guess_array << "_"

		end

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

	# No penalty for each guess

	# When user guesses letter, that letter will show in context of word
	## need to add logic for multiple correct letters with single guess
	def check_guess(guess)
		guess_flag = false
		counter = 0
		# puts @word.length

		while counter < @word.length 
			# puts word_array
			# puts guess

			if @word_array[counter] == guess
				@guess_array[counter] = guess
				puts "Correct!"
				guess_flag = true
			end

			counter += 1

		end

		if guess_flag == false
			puts "Fail"
		end
		
		return @guess_array

	end


# displays current correct letters
	def guess_status
			# puts '****'
			# puts guess_array
			current_array = ""
			
			guess_array.length.times do |each|
				 current_array = current_array + guess_array[each] + " "
			end

			puts

			puts current_array

			puts

	end


	def winlose

		return guess_array == word_array

	end

end


## -------------------------------------- ##

puts

puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%"

# puts

puts "It's time to play the game"

puts

# player enters word
puts 'Player 1, enter a word:'
word = gets.chomp

game = Hangman.new(word)

guess_count = word.length



## guess routine ---------------------

puts

puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%"

puts "- - - P L A Y E R   2 - - -"

puts

puts game.guess_status

puts

guess_counter = 0

while guess_counter < guess_count + 3

	puts "You have #{guess_count - guess_counter + 3} guesses left."

	puts "What is your guess?"
	guess = gets.chomp

	puts

	game.check_guess(guess)

	game.guess_status

	guess_counter += 1

	# check if player has won, if so exit loop
	if game.winlose == true

		break

	end

end


# If win = congratulate, if lose = taunting message
if game.winlose == true

	puts "You win, you magnificent bastard!"

else 

	puts "You lose."
	puts "Fat, drunk and stupid is no way to go through life, son."

end









