# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# RELEASE 2:
# EXPLANATION OF require_relative
# This primes the ruby file to link/connect to a file realtive to the require_relative statement.
# It does this by using the built-in Ruby method require. While require-relative is a directive that is
# ideal for loading files like in this GPS, 'require' is more often used for accessing functionality/a program that
# has been properly installed in your system. 

require_relative 'state_data'

class VirusPredictor
  # initialzes the class with three arguments in the parentheses. Defined instance variables for instances of the class
  # using the arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs two methods when called, those being: 'predicted_deaths' and 'speed_of_speed'. Their arguments are the instance variables of the class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # this predicted_deaths method takes the population_density, population, and state name as arguments.
  # It models the expected death toll by taking instances of the individual population densities, and comparing
  # conditionally how big that value is, and depending on size multiplies it by a float-decimal. This value
  # is also rounded to the nearest whole integer less than or equal to the float using the .floor method
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when (50..200)
      number_of_deaths = (@population * (@population_density / 50) * 0.1).floor
    when (0..49)
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # this speed_of_speed method takes two arguments: population_density and state. This calculates the speed 
  #(measured in months) it will take the disease to spread. The method takes the instance variable @population_density
  #and depending on its size will output an integer (in months) of how long it will take.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

   case @population_density 
    when (50..200)
      speed += 2.5 - ((@population_density.floor / 50) * 0.5)
    when (0..49)
      speed += 2.5
    else
      speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


#=======================================================================
# Reflection Section

=begin

RELEASE 3: In this file there are nested hashes compiling all the data. The variable STATE_DATA is holding an outer hash that is formatted using
the traditonal '=>' operator (aka the hash rocket) which denotes a key-value pair. In this hash setting the key can 
be anything the user would like it to be; here we are using strings as the key, and they are all the names of the 
different states. The value tied to this key is a nested, inner hash. The difference in this hash is that it is
using a symbol as a key (as shown by the colon symbol in 'population_density:'). This key is tied to a value that is 
also a symbol, marked as the population of the state.

RELEASE 5: This report generation belongs outside of the class; this class has all the attributes and methods associated 
with them in a self-contained bubble. To call an instance of this class and input its respective arguments, you can do this
  with a method outside of the class.

-What does require_relative do? How is it different from require?

 his primes the ruby file to link/connect to a file realtive to the require_relative statement.
It does this by using the built-in Ruby method require. While require-relative is a directive that is ideal for loading files like in this GPS, 'require' is more often used for accessing functionality/a program that
has been properly installed in your system. 

-What are some ways to iterate through a hash?

There are may ways to iterate through a hash, such as Hash#each or hash#select while using the corresponding {|key, value|} pair. With the latter "#select"
you can "select" certain values through iteration and return them in a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?

Since the variables are instance variables they don't need to be taken as arguments. Those instance variables that were previously defined 
have scope throughout the class, so that is just redundant and not DRY. Those instance variables have their reach extended into all the methods
defined in the class.

What concept did you most solidify in this challenge?
Refactoring for DRYness, using and calling on hashes, the scope of instance variables

class VirusPredictor
  # initialzes the class with three arguments in the parentheses. Defined instance variables for instances of the class
  # using the arguments.
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end
  # runs two methods when called, those being: 'predicted_deaths' and 'speed_of_speed'. Their arguments are the instance variables of the class.
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  # this predicted_deaths method takes the population_density, population, and state name as arguments.
  # It models the expected death toll by taking instances of the individual population densities, and comparing
  # conditionally how big that value is, and depending on size multiplies it by a float-decimal. This value
  # is also rounded to the nearest whole integer less than or equal to the float using the .floor method
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when (50..200) 
      (@population * (@population_density / 50) * 0.1).floor
    when (0..49)
      (@population * 0.05).floor
    else
      (@population * 0.4).floor
    end
  end
  
  # this speed_of_speed method takes two arguments: population_density and state. This calculates the speed 
  #(measured in months) it will take the disease to spread. The method takes the instance variable @population_density
  #and depending on its size will output an integer (in months) of how long it will take.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
   case @population_density 
    when (50..200)
      2.5 - ((@population_density.floor / 50) * 0.5)
    when (0..49)
      2.5
    else
      0.5
    end
  end

end

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
# alaska.speed_of_spread

STATE_DATA.each do |state, data|
  VirusPredictor.new(state).virus_effects
end

=end
