class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(num_barks)
		num_barks.times {puts "Woof!"}
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		human_years * 7
	end

	def bang
		puts "*plays dead*"
	end

	def initialize
		puts "Initializing new puppy instance..."
	end
end

jasper= Puppy.new
jasper.speak(4)
jasper.roll_over
puts jasper.dog_years(3)
jasper.bang

# Release 2- Write a new class, give it methods, initialize


class Exercise
	def initialize
		puts "Person is warming up..."
	end

	def pushups(number_pushups)
		count= 1
		number_pushups.times do
 			puts "#{count} pushup(s)!"
 			count += 1
 		end
 	end

 	def pullup(number_pullups)
 		count= 1
 		number_pullups.times do
 			puts "#{count} pullup(s)!"
 			count += 1
 		end
 	end
end


#Release-2-1- just using a loop to make 50 instances of our Excercise class
#5  0.times {Exercise.new}

#Release-2-2- create the instance and store in a data structure (an array)
strength_training= []
50.times {strength_training << Exercise.new}
puts "We have #{strength_training.length} instances!"

#Release-2-3- Iterate through the array to call all the instance methods for all the isntances(50 instances)
strength_training.each do |workout|
	workout.pushups(5)
	workout.pullup(6)
end	
