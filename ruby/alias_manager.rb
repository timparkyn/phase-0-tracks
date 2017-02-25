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

	# downcases, reverses first and lase names, then becomes array
	fake_name_arr = name.downcase.split(' ').reverse.join(' ').split('')

	return fake_name_arr

end


def next_letter(letter)

	#searches for vowels, then replaces with next in array
	counter = 0
	vowel = ['a', 'e', 'i', 'o', 'u']
	until counter == vowel.size do
		if letter == vowel[counter]
			new_letter = vowel[counter+1]

			#end of array correction
			if new_letter == nil
				new_letter = 'a'
			end
		end
		counter += 1
	end


	#searches for consonants, then replaces with next in array
	counter = 0
	consts = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

	until counter == consts.size do
		if letter == consts[counter]
			new_letter = consts[counter+1]

			# end of array correction
			if new_letter == nil
				new_letter = 'b'
			end
		end
		counter += 1
	end

	return new_letter

end

fake_name_base = {}
 

 # declaring
name = ''

#fake_name_base = Hash.new { |name, key| flname[key] =  }




while name != 'quit'

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

			else
			# otherwise add next_letter to string	
				fake_name += next_letter(fake_name_arr[name_counter])

			end

			name_counter += 1


		end

		#capitalize each name; split/capitalize/add back together
		fake_name_temp = fake_name.split(' ')
		fake_name = fake_name_temp[0].capitalize + ' ' + fake_name_temp[1].capitalize

		puts fake_name

		fake_name_base = {name => fake_name}
		#fake_name_base[:flname] = name
		#fake_name_base[:codename] =  fake_name



	end

end

# fake_name_base.each do |flname, codename|
# 	# puts flname 'is also known as' codename
# 	# puts '{flname} is also known as #{codename}'
# end

p fake_name_base













