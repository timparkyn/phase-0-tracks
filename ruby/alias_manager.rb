# take a name, create a fake name

## swap first and last name
## changing each vowel to the next vowel in 'aeiou'
## changing each consonant to the next consonant


#identifyletter
# check letter in code_string
# code_string.next
# replace letter with code_string.next

# if vowel, then next_vowel
# else next_constant


def name_reverse(name)

	# downcases, reverses first and lase names, then break name into an array
	fake_name_arr = name.downcase.split(' ').reverse.join(' ').split('')

	return fake_name_arr

end


def next_vowel(letter)
	
	#searches for vowels, then replaces with next in array
	counter = 0
	vowel = ['a', 'e', 'i', 'o', 'u']
	until counter == vowel.size do
		if letter == vowel[counter]
			new_vowel = vowel[counter+1]
			
			#end of array correction
			if new_vowel == nil
				
				new_vowel = 'a'
			end

		end
		counter += 1
	end

	return new_vowel
	
end

def next_const(letter)
	
	#searches for consonants, then replaces with next in array
	counter = 0
	consts = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

	until counter == consts.size  do
		if letter == consts[counter]
			new_const = consts[counter+1]
		
			#end of array correction
			if new_const == nil
				new_const = 'b'
			end

		end
		counter += 1
	end

return new_const

end


 

 # declaring
name = ''
fake_name_base = {}



loop do

	name_counter = 0
	fake_name = ''
	fake_name_arr = []
	puts 'Create a new codename (enter quit to end)'
	name = gets.chomp

	if name != 'quit'

		# first and last names are reversed, and split into an array of lowercase letters
		fake_name_arr = name_reverse(name)


		# fake_name assembly. do until the length of the array
		until name_counter == fake_name_arr.length

			# if a space is found in the array, add a space to the sting (no change)
			if fake_name_arr[name_counter] == ' '
				fake_name += ' '
				
			elsif ['a', 'e', 'i', 'o', 'u'].include?(fake_name_arr[name_counter])
				
				# if the letter is a vowel, add the next vowel	
				fake_name += next_vowel(fake_name_arr[name_counter])

			else 
			
				# else add the next consonant
				fake_name += next_const(fake_name_arr[name_counter])
				

			end

			name_counter += 1


		end

		

		#capitalize each name; split/capitalize/add back together
		fake_name_temp = fake_name.split(' ')
		fake_name = fake_name_temp[0].capitalize + ' ' + fake_name_temp[1].capitalize

		puts fake_name

		fake_name_base[name] = fake_name
	
	else

		break


	end

	
	

end



fake_name_base.each { |name, y| puts name + ' is also known as ' + y }















