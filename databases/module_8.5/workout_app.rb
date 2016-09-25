# An app to record your swole-ness
# Require gems
require 'sqlite3'
require 'faker'

# Create database
db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

# Method Code ------------------------------------------------------------------
# Create Table when a new entry is being made
def new_entry
  puts "Enter Date [mmddyyyy]: "
  date = gets.to_i

  new_table_cmd = <<-SQL
    CREATE TABLE date (
      id INTEGER PRIMARY KEY,
      workout VARCHAR(255),
      weight INT,
      reps INT
    )
  SQL

end

# Insert into the current table
def insert_workout(db)
  puts "What date?"
  date = gets.to_i
  puts "Workout: "
  workout = gets.chomp
  puts "Weight (lb): "
  weight = gets.to_i
  puts "Reps: "
  reps = gets.to_i

  db.execute("INSERT INTO ? (workout, weight, reps) VALUES (?, ?, ?)", [date, workout, weight, reps])
end

# User Interface ---------------------------------------------------------------
=begin
- Welcome User by asking their name
- Ask user what actions they would like to do
  - `Create` a new entry
    - This will create a new table
    - User will add input a date which will name the table




=end
clear = system ("clear")
clear
puts "---Get Swole App---"
puts "Input Name:"
user_name = gets.chomp
clear
puts "Welcome #{user_name}, What would you like to do today?"
puts "[new/insert/modify/delete/view/done]"
user_input = gets.chomp

while user_input != 'done'
  if user_input == 'new'
    new_entry
  elsif user_input == "insert"
    insert_workout(db)
  elsif user_input == 'view'
    db.execute(".table")
  else
    puts "Invalid Entry"
  end
  clear
  puts "Anything else you want to do? [new/insert/modify/delete/view/done]"
  user_input = gets.chomp
end
