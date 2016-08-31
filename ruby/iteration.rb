def good_food
	puts "Begin method"
	food1 = "chicken"
	food2 = "steak"
	food3 = "beef"
	puts "I love; "
 	yield(food1, food2, food3)
 	puts "End of method"
 end


good_food { |food1, food2, food3| puts " #{food1} #{food2} #{food3}"}


best_cars = ["Porsche", "Toyota", "Ford"]

car_brand = {
	Chevy: "Silverado" ,
	Honda: "Accord" ,
	Jeep: "Patriot" ,
}

p best_cars

best_cars.each do |cars|
	puts "We love the #{cars}"
end

p best_cars

p best_cars

best_cars.map! do |cars|
	puts cars
	cars.reverse
end

p best_cars

p car_brand

car_brand.each do |car, brand|
	puts "We love the #{car} #{brand}"
end

p car_brand

number_array = [1, 2, 3 , 4, 5, 6, 7, 8, 9, 10]

number_hash = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}

p number_array

number_array.delete_if{ |numbers| numbers.even? }

p number_array

p number_hash

number_hash.delete_if{ |word, digit| digit.odd?}

p number_hash

num_array = [1, 2, 3 , 4, 5, 6, 7, 8, 9, 10]

num_hash = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}

p num_array

num_array.keep_if{ |numbers| numbers < 5}

p num_array

p num_hash

num_hash.keep_if{ |word, digit| digit > 5}

p num_hash

numb_array = [1, 2, 3 , 4, 5, 6, 7, 8, 9, 10]

numb_hash = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}

p numb_array

even_numbers = numb_array.select{ |numbers| numbers.even?}

p even_numbers

p numb_hash

even_hash = numb_hash.select{ |word, digit| digit.even?}

p even_hash

last_array = [1, 2, 3 , 4, 5, 6, 7, 8, 9, 10]

last_hash = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}

p last_array

new_last_array = last_array.drop_while{ |numbers| numbers < 7}

p new_last_array

p last_hash

new_last_hash = last_hash.drop_while{ |word, digit| digit < 7}

p new_last_hash
