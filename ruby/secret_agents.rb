def encrypt (code)
	counter = 0
	new_code = ""

	while counter < code.length
		new_code = new_code + code[counter].next
		# puts new_code

		counter +=1

	end

	puts new_code

end

encrypt ("cyrus")


