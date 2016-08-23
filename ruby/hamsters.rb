puts "What is the hamster's name?"
ham_name = gets.chomp

puts "What is your volume level? (1-10)"
ham_volume = gets.chomp.to_i


puts "What is the hamster's fur color?"
ham_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (Y/N)"
ham_adopt = gets.chomp

puts "Age of hamster?"
ham_age = gets.chomp.to_i

	if ham_age == 0
		ham_age = nil

	else
		ham_age = ham_age
	end

puts "Name: #{ham_name}"
puts "Volume: #{ham_volume}"
puts "Fur Color: #{ham_color}"
puts "Adoptable: #{ham_adopt} "
puts "Age: #{ham_age}"
