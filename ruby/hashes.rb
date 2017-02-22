

client_info = {}


#	first_name:
#	last_name:
#	age:
#	children:
#	decor_theme:
#	shag:
#	househunters:

# boolean method
def truthy(verdad)
	if verdad == 't'
		verdad = true
	elsif verdad == "true"
		verdad = true
	else
		verdad = false
	end
end



#user input
puts "first name"
client_info[:first_name] = gets.chomp.downcase

puts "last name"
client_info[:last_name] = gets.chomp.swapcase

puts "age"
client_info[:age] = gets.chomp.to_i

puts "number of children"
client_info[:children] = gets.chomp.to_i

puts "likes shag?"
client_info[:shag] = gets.chomp

puts "watches househunters? (T/F)"

client_info[:househunters] = gets.chomp

# convert to boolean
client_info[:househunters] = truthy(client_info[:househunters])

puts "other requests?"
client_info[:request] = gets.chomp



puts client_info



# update routine
puts 'To make an update, enter type (enter none if done)?'
input = gets.chomp

if input != "none"
	puts 'updated value?'
	client_info[input] = gets.chomp

	if input == "househunters"
		client_info[:househunters] = truthy(client_info[:househunters])
	end

end

puts client_info


## build initial user entry hash
## check hash contents
## refine hashes with methods
# after questions, print result

## add update routine

# print hash