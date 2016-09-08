# Method Code

class Santa
  attr_reader :reindeer_ranking
  attr_accessor :gender, :age, :ethnicity

  def initialize#(gender, ethnicity)

    puts "Initializing Santa instance ..."

    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ['Rudolf', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    @age = 0

  end

  def santa_info
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
    p @age

  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
    p @reindeer_ranking

  end

  # getter method
  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end

  #setter method def method=(para)
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end


# Driver Code
# santa_con = Santa.new("male", "Filipino")
# santa_con.santa_info
# santa_con.speak
# santa_con.eat_milk_and_cookies("Chocolate Chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_gender.length.times do |i|
#   santas << Santa.new(example_gender[i], example_ethnicities[i])
# end

# santa = Santa.new("male", "Filipino")
# santa.age = 50
# santa.celebrate_birthday
# santa.get_mad_at("Rudolf")
# santa.gender = "Female"
# p santa

# Use provided array of example ethnicity and gender. Add more to the list.
# Randomly select ethnicity and gender
# Santa's age is between 0 - 140 at Randomly
# No need to store Santas in a data structure

example_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
5.times do
  santa = Santa.new
  santa.gender = example_gender.sample
  santa.ethnicity = example_ethnicities.sample
  santa.age = rand(140)
  santas << santa
end
p santas
