puts "what is the hamsters name?"
hamstername = gets.chomp
puts "what is the volume?"
volumelevel = gets.chomp.to_i
puts "what is the fur color?"
furcolor = gets.chomp
puts "good for adoption? (true/false)"
adoption = gets.chomp
if adoption == "true"
 adoption = true
elsif adoption == "false"
 adoption = false
end
puts "what is estimated age?"
age = gets.chomp.to_i
if age == ""
 age = nil
end

puts "Hamster's Name: #{hamstername}"
puts "Volume: #{volumelevel}"
puts "Hamster's Fur Color: #{furcolor}"
puts "Good for Adoption: #{adoption}"
puts "Hamster's Age: #{age}"


