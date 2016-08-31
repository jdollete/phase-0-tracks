# Ask user for name, age, number of children, decor theme, favorite color, number of rooms
puts "What is your name?"
client_name = gets.chomp

puts "What is your age?"
client_age = gets.to_i

puts "Number of children you have?"
client_child = gets.to_i

puts "What is your decor theme?"
client_theme = gets.chomp

puts "What is your favorite color?"
client_color = gets.chomp

# Create hash
client_data = {
	name: client_name,
	age: client_age,
	children: client_child,
	theme: client_theme,
	fav_color: client_color
}

# Print out the hash once all questions are answered
p client_data

# Ask user if the information is correct

# If Yes, ask which key they would like to redo

# Change specific key

# If "none" skip

# Print out updated hash
