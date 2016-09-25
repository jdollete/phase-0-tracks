# An app to record your swole-ness

# Insert New Rows
# Input: String
# Step:
#   - Ask user to input workout, weight, and reps Value
#   - Input values into Database
#   - Until user inputs they are done, loop through the Method
# Output: Updated Database

# Update Rows
# Input: String
# Step:
#   - Ask User what they want to Update
#   - Ask for new Value
#   - Loop until user inputs done
# Output: Updated Database

# Delete Rows
# Input: Integer
# Step:
#   - Ask User what they want to delete
#   - Delete input from Database
#   - Until user inputs done loop again
# Output: Updated Database

# User Interface
# Input: String
# Steps:
#   - Welcome User by asking their name
#   - Ask user for today's date
#   - Ask user what actions they would like to do
#   - Keep looping until user is done
# Output: Updated Database


# Require gems
require 'sqlite3'
# require 'faker'

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
def insert_workout(db, date, user_continue)
  while user_continue != 'no'
    system ("clear")
    puts "---Get Swole App---".center(150)

    puts "Please Insert Workout Details"
    puts "Workout: "
    workout = gets.chomp
    puts "Weight (lb): "
    weight = gets.to_i
    puts "Reps: "
    reps = gets.to_i
    db.execute("INSERT INTO workout_data (date_workout, workout, weight, reps) VALUES (?, ?, ?, ?)", [date, workout, weight, reps])

    puts "Do you have more to add? (yes/no)"
    user_continue = gets.chomp.downcase
  end
end
#-------------------------------------------------------------------------------
def data_modify(db, user_continue)
  while user_continue != 'no'
    system ("clear")
    puts "---Get Swole App---".center(150)

    puts "Here is your current information"
    puts '[Line ID -- Workout -- Weight -- Reps]'
    db.execute("SELECT * FROM workout_data;").each do |row|
      puts "#{row["id"]} - #{row["date_workout"]} - #{row["workout"]} - #{row["weight"]}lbs - #{row["reps"]} reps"
    end

    puts "Which line would you like to modify?"
    modify_line = gets.to_i # Row ID
    puts "What Column? [workout/weight/reps]"
    modify_column = gets.chomp  # Attribute
    puts "New Value?"

    if modify_column == "weight" || modify_column == "reps" # Value
      modify_value = gets.to_i
      if modify_column == "weight"
        db.execute("UPDATE workout_data SET weight = ? WHERE id = ?", [modify_value, modify_line])
      else
        db.execute("UPDATE workout_data SET reps = ? WHERE id = ?", [modify_value, modify_line])
      end
    else
      modify_value = gets.chomp
      db.execute("UPDATE workout_data SET workout = ? WHERE id = ?", [modify_value, modify_line])
    end

    puts "Would you like to modify something else? (yes/no)"
    user_continue = gets.chomp
  end
end
#-------------------------------------------------------------------------------
def data_delete(db, user_continue)
  while user_continue != "no"
    system ("clear")
    puts "---Get Swole App---".center(150)
    puts '[Line ID -- Workout -- Weight -- Reps]'
    db.execute("SELECT * FROM workout_data;").each do |row|
      puts "#{row["id"]} - #{row["date_workout"]} - #{row["workout"]} - #{row["weight"]}lbs - #{row["reps"]} reps"
    end
    puts "Which Line would you like to delete?"
    line_delete = gets.to_i
    db.execute("DELETE FROM workout_data WHERE id = ?", [line_delete])

    puts "Would you like to delete something else? (yes/no)"
    user_continue = gets.chomp
  end
end
#-------------------------------------------------------------------------------
def view_data(db)
  system ("clear")
  puts "---Get Swole App---".center(150)
  puts '[Line ID -- Workout -- Weight -- Reps]'
  db.execute("SELECT * FROM workout_data;").each do |row|
    puts "#{row["id"]} - #{row["date_workout"]} - #{row["workout"]} - #{row["weight"]}lbs - #{row["reps"]} reps"
  end
end




# Helper Code ------------------------------------------------------------------
# clear = system ("clear")
# title_app = puts "---Get Swole App---".center(150)
# refresh = clear, title_app # Did not work
user_continue = ""

# User Interface ---------------------------------------------------------------
system ("clear")
puts "---Get Swole App---".center(150)
puts "Input Name:"
user_name = gets.chomp

system ("clear")
puts "---Get Swole App---".center(150)
puts "Welcome #{user_name}, What is today's date? [mmddyyyy]"
date = gets.to_i
db.execute(create_table_cmd)

system ("clear")
puts "---Get Swole App---".center(150)
puts "What would you like to do today?"
puts "[Insert/Modify/Delete/View/Done]"
user_input = gets.chomp.downcase
# Driver Code ------------------------------------------------------------------
while user_input != 'done'
  if user_input == 'insert'
    insert_workout(db,date, user_continue)
  elsif user_input == 'modify'
    data_modify(db, user_continue)
  elsif user_input == 'delete'
    data_delete(db, user_continue)
  elsif user_input == 'view'
    view_data(db)
  else
    puts "Invalid Entry"
  end

  puts "Anything else you want to do? [insert/modify/delete/view/done]"
  user_input = gets.chomp.downcase
end
