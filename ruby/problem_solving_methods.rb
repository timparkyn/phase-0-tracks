array = [ 23, 53, 47, 19, 11 ]




def search_array(array, number)


		array.find_index(number)

end

#outputs index
p search_array(array, 47)

#outputs nil
p search_array(array, 32)


#fib = [0, 1, 1, 2]

#6
# fib.push.  fib.each{ |x| array (x-1) + array(x) }



# fibcombo = [0, 1]


# def fib(number)



# fibcombo.length

# counter = 0

# counter1 = 1

# 	until fibcombo.length == number do
# 	# array.each do
		
# 	fibcombo << fibcombo[counter] + fibcombo[counter1]
# 	#fibcombo << fibcombo[counter - 1] + fibcombo[counter]

# 	# fibcombo << new_fib


# 	counter += 1
# 	counter1 += 1


# 	end

# 	p fibcombo

# end

# fib(6)





def fibber(number)

	fibby = [0, 1]

	# until fibby's length is the same as argument
	until fibby.length == number do

		# fibby starts with a length of 2, adjust for array indexing
		fibby << fibby[fibby.length-2] + fibby[fibby.length-1]

	# p fibby	

	end

	### if p is commented out, throws error:
	### problem_solving_methods.rb:88:in `<main>': undefined method `include?' for nil:NilClass (NoMethodError)
	### don't know why
	p fibby

end

p fibber(100)


# verify fib sequence from asssignment: 218922995834555169026
p fibber(100).include?(218922995834555169026)


