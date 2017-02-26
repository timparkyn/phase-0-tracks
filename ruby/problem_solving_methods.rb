
 ## Release 0 ---------------------------------


array = [ 23, 53, 47, 19, 11 ]

def search_array(array, number)

		counter = 0

		until counter == array.length

			if number == array[counter]
				puts counter
			end

			counter +=1

		end

# 		alternate method
#		array.find_index(number)

end

#outputs index
p search_array(array, 47)

#outputs nil
p search_array(array, 32)






## Release 1 ------------------------------------------

def fibber(number)

	fibby = [0, 1]

	# until fibby's length is the same as argument
	until fibby.length == number do

		# fibby starts with a length of 2, adjust for array indexing
		fibby << fibby[fibby.length-2] + fibby[fibby.length-1]

	# p fibby	

	end

	
	return fibby

end

p fibber(100)


# verify fib sequence from asssignment: 218922995834555169026
p fibber(100).include?(218922995834555169026)





# Release 2 --------------------------------------------------------


# make array of integers
# go through array from index 0 through end
# compare the current index with index+1
# if current index is less than index+1, but it in the final list
# continue until the array is finished



def insertion_sort(numbers)
    final = [numbers[0]]
    numbers.delete_at(0)
    # main code
    for i in numbers
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end

numbers = [ 44, 23, 01, 3, 99, 17, 87, 76, 61, 12]

puts insertion_sort(numbers)



























