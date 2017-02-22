
#def languages
#	lang1 ="HTML"
#	lang2 = "CSS"
#	lang3 = "Ruby"
#	puts "These are the languages we learned:"
#	yield(lang1, lang2, lang3)
#end

#languages { |lang1, lang2, lang3| puts "#{lang1}, #{lang2}, #{lang3}"}


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


# 1 --------------------- \/
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

# 2 --------------------- \/

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

# 3 -------------------- \/ 

# array condition method 



