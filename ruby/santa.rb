# Method Code

class Santa

  def initialize(gender, ethnicity)

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

end


# Driver Code
santa_con = Santa.new("male", "Filipino")
santa_con.santa_info
santa_con.speak
santa_con.eat_milk_and_cookies("Chocolate Chip")

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
