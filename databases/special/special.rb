# Daily affirmations
# App will display a random affirmation, and let user add a new affirmation

# build initial database
# build method to display random affirm
# create user interface to add affirm

#user interface
# ask user to get/add/end affirm
# uf if/then on input 
# keeps going until end

# to add person
# check existing table for entry
# if not write new user
# return 


require 'sqlite3'

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS people(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )

SQL


create_table_two = <<-SQL
  CREATE TABLE IF NOT EXISTS special(
    id INTEGER PRIMARY KEY,
    affirm VARCHAR(255),
    user_id INTEGER,
   	FOREIGN KEY (user_id) REFERENCES people(id)
  )

SQL

create_table_one = <<-SQL
  CREATE TABLE IF NOT EXISTS people(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )

SQL



db = SQLite3::Database.new("special.db")
db.execute(create_table_one)
db.execute(create_table_two)

# pre-populate special table



# add new affirmation
def add_affirm(db, new_affirm)
  db.execute("INSERT INTO special (affirm, VALUES (?)", [new_affirm])
  
#wht is this?
  db.execute("")
end

	# affirms = []
def list_affirms(db, name)
	#needs JOIN
	affirms = db.execute("SELECT * FROM special JOIN people WHERE nombre == name")
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

def user_admin(db, nombre)

	 db.execute("INSERT INTO people (name) VALUES (?)", [nombre])

	 puts "#{nombre} is now a new user"

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

puts "What is your name"
nombre = gets.chomp

user_admin(db, nombre)

puts ""

while user_input != "end"

	puts "Press enter to receive one of your affirmations, or other / admin / add / see / end";
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












