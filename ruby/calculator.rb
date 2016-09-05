# method code


def calculate(user_inp) #This operation only does numbers from 0-9
	i = 0
	calc_hist = []
# Create a method that keeps cycle equations until user inputs 'done'
  while user_inp != 'done'
# Takes input quation, strip out the spaces, and split into an array
    user_calc = user_inp.gsub(/\s+/, "").split('')
# Give each array index a variable
    num1 = user_calc[0].to_i
    operator = user_calc[1]
    num2 = user_calc[2].to_i
# Create conditional statement depending on operation
      if operator == "+"
        p sol = num1 + num2
      elsif operator == "-"
        p sol = num1 - num2
      elsif operator == "*"
        p sol = num1 * num2
      elsif operator == "/"
        p sol = num1 / num2
# Have a condition for invalid entries
      else
        puts "Invalid Entry: #{user_calc[0]} #{user_calc[1]} #{user_calc[2]} [Please recheck equation]"
        sol = "invalid"
      end
# Have it push all valid entries into an array
      if sol != "invalid"
        calc_hist.insert(i, "#{num1} #{operator} #{num2} = #{sol}")
        i += 1
      end

	  puts "What is your calculation?"
	  user_inp = gets.chomp
  end
# Do an iteration that will say how many equations were solve and the equations them selves
  puts "#{i} calculations performed"
  calc_hist.each do |equation|
  	p equation
  end

end


# driver code - I decided to use a single input that the user would input and be placed into the method

puts "What is your calculation?"
user_inp = gets.chomp
calculate(user_inp)

# calculate(4,'+',5)

# Mistakes that could happen: Accidentally pressing a letter, multiple operators right after another, and multiple decimal places.
