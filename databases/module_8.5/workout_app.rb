# An app to record your swole-ness
# Require gems
require 'sqlite3'
require 'faker'

# Create database
db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workout_data (
    id INTEGER PRIMARY KEY,
    date_workout INT,
    workout VARCHAR(255),
    weight INT,
    reps INT
  )
SQL


# Method Code ------------------------------------------------------------------
# Create Table when a new entry is being made
# def new_entry(db, create_table_cmd)
#   db.execute(create_table_cmd,[date])
# end

# Insert into the current table
def insert_workout(db, date)
  puts "Please Insert Workout Details"
  puts "Workout: "
  workout = gets.chomp
  puts "Weight (lb): "
  weight = gets.to_i
  puts "Reps: "
  reps = gets.to_i

  db.execute("INSERT INTO workout_data (date_workout, workout, weight, reps) VALUES (?, ?, ?, ?)", [date, workout, weight, reps])
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
title_app = puts "---Get Swole App---".center(150)
refresh = clear, title_app

refresh
puts "Input Name:"
user_name = gets.chomp

refresh
puts "Welcome #{user_name}, What is today's date? [mmddyyyy]"
date = gets.to_i
db.execute(create_table_cmd)

refresh
puts "What would you like to do today?"
puts "[Insert/Modify/Delete/View/Done]"
user_input = gets.chomp.downcase

while user_input != 'done'
  if user_input == 'insert'
    refresh
    insert_workout(db,date)
  elsif user_input == 'modify'
    refresh
  elsif user_input == 'delete'
    refresh
  elsif user_input == 'view'
    refresh
    db.execute("SELECT * FROM sqlite_temp_master WHERE type='table'")
  else
    puts "Invalid Entry"
  end
  clear
  puts "Anything else you want to do? [new/insert/modify/delete/view/done]"
  user_input = gets.chomp.downcase
end
