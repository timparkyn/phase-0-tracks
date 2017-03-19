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

db.execute(create_table_cmd)

# pre-populat special table



# add new affirmation
def add_affirm(new_affirm)
  db.execute("INSERT INTO special (affirm) VALUES (?)", [new_affirm])
end


def list_affirms
	affirms = db.execute("SELECT * FROM special")
affirms.each do |listing|
 puts "#{listing['id']}:  #{listing['affirm']}"
end