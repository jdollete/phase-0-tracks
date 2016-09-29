# require gems
require 'sinatra'
require 'sqlite3'
require 'faker'

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

# write a GET route that displays an address
get '/address' do
  "#{Faker::Address.street_address} <br>#{Faker::Address.city}, #{Faker::Address.state} #{Faker::Address.zip}"
end

# write a GET route that can take a person's name as a query parameter (not a route parameter)
# input: http://localhost:9393/person_name/?name=Jill%20Valentine output: Welcome to Umbrella Corporation Jill Valentine.
# input: http://localhost:9393/person_name/ output: Welcome to Umbrella Corporation, please sign in.

get '/person_name/' do
  name = params[:name]
  if name
    "Welcome to Umbrella Corporation #{params[:name]}."
  else
    "Welcome to Umbrella Corporation, please sign in."
  end
end

# A route that uses route parameters to add two numbers and respond with the result.
