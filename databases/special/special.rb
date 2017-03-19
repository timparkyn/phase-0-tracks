# Daily affirmations
# App will display a random affirmation, and let user add a new affirmation

# build initial database
# build method to display random affirm
# create user interface to add affirm



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
		affirms.each do |listing|
	 	puts "#{listing}"
	 end
end







# --------------- drive this -------------------

add_affirm(db, 'you are so special')
add_affirm(db, 'you make a positive contribution to the community')
add_affirm(db, 'you are good enough')

list_affirms(db)



