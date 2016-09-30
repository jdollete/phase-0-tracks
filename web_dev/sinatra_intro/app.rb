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
# input: http://localhost:9393/add_it/1/5 output: 1 + 5 = 6
# Needs to be a string when you want to show it on the browser

get '/add_it/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  sum = num1.to_i + num2.to_i
  "#{num1} + #{num2} = #{sum}"
end

# Make a route that allows the user to search the database in some way
# Write a GET route list all the students at a certain age
# input: http://localhost:9393/search/25
# output:   Filtering students who are 25 years old.
            #
            # All of the students below are 25 years old.
            #
            # ID: 22
            # Name: Bo McCullough
            # Age: 25
            # Campus: SD

# input: http://localhost:9393/search/24
# output:   Filtering students who are 24 years old.
            #
            # There are no students at that age.

get '/search/:search_age' do
  age = params[:search_age]
  student_age = db.execute("SELECT * FROM students WHERE age=?", [params[:search_age]])
  search_statement = "Filtering students who are #{age} years old.<br><Br>"
  student_list = ''
  student_age.each do |student|
    student_list << "ID: #{student['id']}<br>"
    student_list << "Name: #{student['name']}<br>"
    student_list << "Age: #{student['age']}<br>"
    student_list << "Campus: #{student['campus']}<br><br>"
  end



  if student_list.empty?
    "#{search_statement}There are no students at that age."
  else
    "#{search_statement}All of the students below are #{age} years old:<br><br> #{student_list}"
  end

end
