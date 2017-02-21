

client_info = {}


#	first_name:
#	last_name:
#	age:
#	children:
#	decor_theme:
#	shag:
#	mc_mod:



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

puts "likes mid-century modern?"
client_info[:MCM] = gets.chomp

puts "other requests?"
client_info[:request] = gets.chomp



puts client_info

puts 'To make an update, enter type (enter none if done)?'
input = gets.chomp

if input != "none"
	puts 'updated value?'
	client_info[input] = gets.chomp
end

puts client_info


## build initial hash
## refine hases with methods
# asfter questions, print result

## add update routine

# print hash