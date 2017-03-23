# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# /contact route that displays an address
get '/contact/:address' do
  address = params[:address]
  "address: #{address}"
end

# /great_job route that can take a person's name as a query parameter (not a route parameter) 
# and say "Good job, [person's name]!". 
#If the query parameter is not present, 
#the route simply says "Good job!"
get '/great_job/:name' do

  name = params[:name]

  if name
    "Good job, #{name}!" 
  else
    "Good job!"
  end
end

# uses route parameters to add two numbers and respond with 
# the result. The data types are tricky here -- 
# when will the data need to be (or arrive as) a string?

get '/:number1/add/:number2' do
  number1 = params[:number1]
  number2 = params[:number2]

  sum = number1.to_i + number2.to_i

  "#{number1} + #{number2} = #{sum}"

end

 # route that allows the user to search the database in some way 
 # -- maybe for students who have a certain first name, 
 # or some other attribute. If you like, you can simply modify the home page to take a query parameter, 
 # and filter the students displayed if a query parameter is present.


# r1

# Other web app libraries include Godfather, Rack, and Marley.

# MySQL, Postgres

# It refers to the languages, technologies, and systems 
# used to build/use a website




