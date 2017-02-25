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

# name = 'derek zoolander'

# swaps first and last names
# fake_name = name.split(' ').reverse.join(' ')
# n = fake_name.length
# fake_arr = fake_name.split("")

# vowels = 'aeiou'
# consts = 'bcdfghjklmnpqrstvwxyz'

# until counter == fake_name.length
# 	fake_arr[counter] ==

# 	counter += 1
# end

# fake_name.map { |n| fake_name.next }
# if 

# #if letter is .include

# if fake_name.include?(vowels)

def name_reverse(name)

	# reverses first and lase names, then becomes array
	fake_name_arr = (name.split(' ').reverse.join(' ')).split('')

	return fake_name_arr

	p fake_name_arr

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
	

	#searches for vowels, then replaces with next in array
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

	p new_letter

end
 

# p name_reverse('derek zoolander')

name_counter = 0
fake_name = ""
fake_name_arr = []

name = "derek zoolander"

fake_name_arr = name_reverse(name)

p fake_name_arr[9]

until name_counter == fake_name_arr.length

	if fake_name_arr[name_counter] == " "
		fake_name += " "

	else

		fake_name += next_letter(fake_name_arr[name_counter])

	end

	name_counter += 1


end

p fake_name.capitalize


# p next_letter('b')

# p next_letter('t')

# p next_letter('z')

# p next_letter('u')









