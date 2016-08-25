puts "How many employees will be processed?"
emp_num = gets.to_i

# Until number of employees goes to zero, repeat process

while emp_num != 0
	puts "What is your name?"
	user_name = gets.chomp.downcase

	puts "How old are you?"
	user_age = gets.to_i

# Verify age is correct when everything goes to zero

	puts "What year were you born? (yyyy)"
	user_year = gets.to_i

	ver_year = Time.now.year - user_year
	ver_age = ver_year - user_age

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	user_gbread = gets.chomp.downcase

	puts "Would you like to enroll in the company’s health insurance? (y/n)"
	user_ins = gets.chomp.downcase

# Ask for allergies until user inputs "done", if at anytime user inputs "sunshine" terminate and go directly to statement provided

	puts "What are some of your allergies?"
	user_alrgy = ""
	until user_alrgy == "done" || user_alrgy == "sunshine"
		user_alrgy = gets.chomp.downcase
		if user_alrgy == "sunshine"
			puts "Probaly a vampire."
		end
	end

# Comparison statements to see if employee is a vampire
	if user_alrgy != "sunshine"
		if user_name == "tu fang" || user_name == "drake cula"
			puts "Definitely a vampire."

		else
			if ver_age == 0
				if user_ins == "y" || user_gbread == "y"
					puts "Probably not a vampire."
				end
			elsif ver_age > 0
				if user_ins == "y"
					if user_gbread == "n"
						puts "Probably a vampire."
					end
				elsif user_ins == "n"
					if user_gbread == "y"
						puts "Probably a vampire."
				elsif ver_age != 0 && user_gbread != "y"
					if user_ins != "y"
						puts "Almost certrainly a vampire."
				end
					end
				end

			else
				puts "Results inconclusive"
			end
		end
	end

	emp_num = emp_num - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
