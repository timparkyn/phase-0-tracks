# Daily affirmations
# App will display a random affirmation, and let user add a new affirmation

# build initial database
# build method to display random affirm
# create user interface to add affirm

#user interface
# ask user to get/add/end affirm
# uf if/then on input 
# keeps going until end



require 'sqlite3'

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS special(
    id INTEGER PRIMARY KEY,
    affirm VARCHAR(255)
  )

SQL



db = SQLite3::Database.new("special.db")
db.execute(create_table_cmd)

# pre-populate special table



# add new affirmation
def add_affirm(db, new_affirm)
  db.execute("INSERT INTO special (affirm) VALUES (?)", [new_affirm])
end

	# affirms = []
def list_affirms(db)
	affirms = db.execute("SELECT * FROM special")
	puts ""
	puts "----------"
		affirms.each do |id, listing|
	 	puts "#{listing}"
	 	end
 	puts "----------"
 	puts ""
end

def random_affirm(db)
	affirms = db.execute("SELECT * FROM special")
	
	output = affirms[rand(affirms.length)]
	puts ""
	puts output[1]
	puts ""
end




# --------------- drive this -------------------

# add_affirm(db, 'you are special')
# add_affirm(db, 'you make a positive contribution to the community')
# add_affirm(db, 'you are good enough')
# add_affirm(db, 'you put the art in artinsal')
# add_affirm(db, 'bless your heart')

# list_affirms(db)


# random_affirm(db)


user_input = ""

puts ""
puts "### affirmation engine ###"
puts ""

while user_input != "end"

	puts "Press enter to receive your affirmation, or add / see / end";
	user_input = gets.chomp.downcase

		if user_input == "end"

			break

		elsif user_input == "add"
			puts "Enter your new affirmation:"
			new_affirm = gets.chomp
			add_affirm(db, new_affirm)

			puts "Thank you for a wonderful submission."
			puts ""

		elsif user_input == "see"
		
			list_affirms(db)

		else 

			random_affirm(db)
			
		end

end












