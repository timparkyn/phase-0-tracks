# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campus/new' do
  erb :new_campus
end

# get '/students/major' do
# 	erb :major
# end

get '/students/:campus' do
	@students = db.execute("SELECT * FROM students WHERE campus = ?", params[:campus])
	erb :campus
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources


# create new campus via a form
post '/campus' do
  db.execute("INSERT INTO campus (name, phone) VALUES (?,?)", [params['name'], params['phone']])
  redirect '/'
end

