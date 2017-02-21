

client_info = {}


#	first_name:
#	last_name:
#	age:
#	children:
#	decor_theme:
#	shag:
#	mc_mod:



puts "first name"
client_info[:first_name] = gets.chomp

puts "last name"
client_info[:last_name] = gets.chomp

puts "age"
client_info[:age] = gets.chomp.to_i

puts "number of children"
client_info[:children] = gets.chomp.to_i

puts "likes shag?"
client_info[:shag] = gets.chomp

puts "likes MCM?"
client_info[:MCM] = gets.chomp

puts "other preference"
client_info[:other_pref] = gets.chomp



puts client_info

puts 'Do you want to make an update?'


## build initial hash
## refine hases with methods
# asfter questions, print result

## add update routine

# print hash