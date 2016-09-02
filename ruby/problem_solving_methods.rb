

# Method that seaches an array and
# gives back the index number of value found
def  search_array (array, number)
  counter = 0
  index = []
  array.each do |value|
    index << counter if value == number
    counter += 1
  end
index.empty? ? nil : index
end


def fib(terms)
  fib_terms = []
  if terms == 1
    fib_terms << 0
  elsif terms == 2
    fib_terms << 0 << 1
  else
    counter = 2
    fib_terms << 0 << 1
    while counter != terms
      fib_terms << fib_terms[-1] + fib_terms[-2]
      counter += 1
    end
  end
  return fib_terms
end


# Driver code

# Search array print
# number_array = [23, 5, 28, 87, 4, 8, 4, 10]
# p search_array(number_array, 28)
# p search_array(number_array, 87)
# p search_array(number_array, 4)
# p search_array(number_array, 100)


# Fibonacci print
p fib(1)
p fib(2)
p fib(3)
p fib(10)
p fib(100)
