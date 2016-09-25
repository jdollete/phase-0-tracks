# An app to record your swole-ness
# Require gems
require 'sqlite3'
require 'faker'

# User Interface ---------------------------------------------------------------
=begin
- Welcome User by asking their name
- Ask user what actions they would like to do
  - `Create` a new entry
    - This will create a new table
    - User will add input a date which will name the table




=end
system "clear"
puts "---Get Swole App---"
puts "Input Name:"
user_name = gets.chomp
puts "Welcome #{user_name}, What would you like to do today?"
