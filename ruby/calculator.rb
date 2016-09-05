# method code

def calculate(int1, opr, int2)
  if opr == "+"
    p int1 + int2
  elsif opr == "-"
    p int1 - int2
  elsif opr == "*"
    p int1 * int2
  elsif opr == "/"
    p int1 / int2
  else
    puts "Invalid Entry"
  end

end


# driver code
# puts "Declare your first number: "
# num1 = gets.to_i
# puts "Declare your operator: "
# operator = gets.chomp
# puts "Declare your second number: "
# num2 = gets.to_i
puts "What is your calculation?"
user_inp = gets.chomp.gsub(/\s+/, "").split('')
num1 = user_inp[0].to_i
operator = user_inp[1]
num2 = user_inp[2].to_i

calculate(num1, operator, num2)
# calculate(4,'+',5)
