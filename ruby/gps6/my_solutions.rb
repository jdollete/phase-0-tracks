# Virus Predictor

# I worked on this challenge with: Melanie Gershman.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
=begin
Require relative is used for code that you write, require will be used for code that someone else wrote. Require relative - you're providing a path to the file relative to its place in the directory. Require will load a library for reference in your own code.
=end
require_relative 'state_data'

class VirusPredictor
# Instantiates an object with the values of population, pop density, and state-of-origin
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Takes pop density, pop, and state as arguments and returns number_of_deaths based on pop density.
  def predicted_deaths
    # predicted deaths is solely based on population density

    inf = 1.0/0.0
    case @population_density
    when 200..inf then number_of_deaths = (@population * 0.4).floor
      when 150..199 then number_of_deaths = (@population * 0.3).floor
      when 100..149 then number_of_deaths = (@population * 0.2).floor
      when 50..99 then number_of_deaths = (@population * 0.1).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Takes in pop density and state and returns the speed of spread over a period of months
  # Keeping the methods separate for future changes
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    inf = 1.0/0.0

    case @population_density
      when 200..inf then speed += 0.5
      when 150..199 then speed += 1
      when 100..149 then speed += 1.5
      when 50..99 then speed += 2
      else
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do|state, data|
    each_state = VirusPredictor.new(state, data[:population_density], data[:population])
    each_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

=begin
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
The first one is a key that is a string which needs hash rockets to set it's value.
Second sentax is represents a symbol which only needs a colon to set it's value.

# What does require_relative do? How is it different from require?
Require relative is used for code that you write, require will be used for code that
someone else wrote. Require relative - you're providing a path to the file relative to
its place in the directory. Require will load a library for reference in your own code.

# What are some ways to iterate through a hash?
We could perform a do/loop to iterate through a hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
The methods being called inside virus_effects were passing variables that were already
instance variables. Which makes the variable available throughout the class and no need
to repass them.

# What concept did you most solidify in this challenge?
Iterating through a hash while passing it through a class. Also finally used the case
statement other than always writing out a conditional statement.

=end
