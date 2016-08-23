puts "What is the hamster's name?"
ham_name = gets.chomp

puts "What is your volume level? (1-10)"
ham_volume = gets.chomp

puts "What is the hamster's fur color?"
ham_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (Y/N)"
ham_adopt = gets.chomp

puts "Estimated age of hamster?"
ham_age = gets.chomp

	if ham_age == ""
		ham_age = nil
	else
		puts ham_age
	end
