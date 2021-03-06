
# RELEASE 1 #1 ------------------------\/


#def languages
#	lang1 ="HTML"
#	lang2 = "CSS"
#	lang3 = "Ruby"
#	puts "These are the languages we learned:"
#	yield(lang1, lang2, lang3)
#end

#languages { |lang1, lang2, lang3| puts "#{lang1}, #{lang2}, #{lang3}"}



# RELEASE 1 #2 ------------------------\/

#.each
#trees = ["maple", "cherry","palm", "oak"]

# puts "Types of Trees"
# p trees 

# trees.each do |trees|
#	puts trees
# end 

# puts "After .each call:"
# p trees 

# tree_loc = {"front_yard" => 'maple', "back_yard" => 'cherry', "pool" => 'palm tree', "driveway" => 'oak'}

# tree_loc.each do |location, tree|
#	puts "#{location} has a(n) #{tree}"
# end

#p tree_loc


#.map
#trees = ["maple", "cherry","palm", "oak"]
#old_trees = [] 

# puts "Types of Trees"
# p trees 

# trees.map do |trees|
#	old_trees = "old " + trees 
#	puts old_trees
# end 

#p trees
# old_trees


# RELEASE 2 #1 --------------------- \/
# array condition method 

# numbers = [ 1, 5, 9, 13 ]
# numbers.delete_if {|numbers| numbers < 5}
# p numbers


# hash condition method 
#fruit = {
#	"apples" => 2,
#	"pear" => 4,
#	"peach" => 6,
#	"grapes" => 8
#}

#p fruit

#fruit.delete_if {|fruit, quantity| quantity < 5}

#p fruit




# RELEASE 2  #2 --------------------- \/

# array condition method
# numbers = [ 1, 5, 9, 13 ]
# numbers.keep_if {|numbers| numbers < 5}
# p numbers


# hash condition method
# fruit = {
#	"apples" => 2,
#	"pear" => 4,
#	"peach" => 6,
#	"grapes" => 8
#}

# p fruit

#fruit.keep_if {|fruit, quantity| quantity < 5}

#p fruit




# RELEASE 2 #3 -------------------- \/

## array method ##
fruit = [ 2, 4, 6, 8, 10 ]
odd_fruit = {
	"apples" => 1,
	"pear" => 3,
	"peach" => 5,
	"grapes" => 7,
	"plums" => 9
}

p fruit

p fruit.select{ |item| item < 5 }

p odd_fruit.select{ |fruit, quant| quant < 5 }

p fruit.grep(2)


p fruit




# RELEASE 2 #4 ---------------------\/



p fruit.drop_while {|fruit| fruit < 5 }

p fruit.drop(3)

p #odd_fruit.collect{ |fruit, quant| quant < 5 }




p fruit











# array condition method 
# p fruit.collect{ |item| item >7  }

#p fruit.collect{|num| num**2 }



