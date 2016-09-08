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
    puts "That was a good #{cookie}"
  end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# Driver Code
santa_con = Santa.new(genders[0], ethnicities[0])
santa_con.santa_info
santa_con.speak
santa_con.eat_milk_and_cookies("Chocolate Chip")
