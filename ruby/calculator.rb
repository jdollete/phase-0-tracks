# method code

def calculate(user_inp)
	i = 0
	calc_hist = []
  while user_inp != 'done'
    user_calc = user_inp.gsub(/\s+/, "").split('')
    num1 = user_calc[0].to_i
    operator = user_calc[1]
    num2 = user_calc[2].to_i

      if operator == "+"
        p sol = num1 + num2
      elsif operator == "-"
        p sol = num1 - num2
      elsif operator == "*"
        p sol = num1 * num2
      elsif operator == "/"
        p sol = num1 / num2
      else
        puts "Invalid Entry"
      end
      calc_hist.insert(i, "#{num1} #{operator} #{num2} = #{sol}")
      i += 1
	  puts "What is your calculation?"
	  user_inp = gets.chomp
  end

  puts "#{i} calculations performed"
  calc_hist.each do |equation|
  	p equation
  end

end


# driver code

puts "What is your calculation?"
user_inp = gets.chomp
calculate(user_inp)

# calculate(4,'+',5)
