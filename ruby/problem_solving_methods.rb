number_array = [23, 5, 28, 87, 4, 8, 4, 10]

def  search_array (array, number)
  counter = 0
  index = []
  array.each do |value|
    index << counter if value == number
    counter += 1
  end
index.empty? ? nil : index
end


p search_array(number_array, 28)
p search_array(number_array, 87)
p search_array(number_array, 4)
p search_array(number_array, 100)
