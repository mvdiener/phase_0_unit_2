# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# require_relative calls another ruby file in the same location as the current file. Since the other file is not
# part of the standard ruby library, you have to call it relative to this current file.
#
require_relative 'state_data'
# state_data contains a hash with keys and values. The values for each key are actually hashes themselves. The value
# hash is made up of keys which are symbols, as opposed to strings.

class VirusPredictor
#initialize method, this takes all necessary paramters for the class, an instance variable is set to each parameter
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    # the scope of these instance variables will be throughout any method within the VirusPredictor class
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
  # All of the methods below this are private methods. This means if I try to call them outside of this class,
  # I will receive an error. Methods within this class can call these private methods.

# predicted_deaths method predicts the number of deaths in a state based on the state's population and population density
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# speed_of_spread method predicts how fast the virus will spread based on the state's population density
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# Refactored code

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects
    deaths
  end

  private

  def deaths
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
end

# DRIVER CODE

# refactored driver code: displays virus effects for each state

STATE_DATA.each {|x,y| 
x = VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population], STATE_DATA[x][:region], STATE_DATA[x][:regional_spread])
x.virus_effects}



#---------------
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# Reflection
# I struggled quite a bit on this one with refactoring my driver code. I don't quite know the right syntax to
# loop through a class.new and access all right info from my hash. I had to pretty much use the exact format from
# the example driver code, but I'm still not entirely sure how it all works. As in, I couldn't write that from 
# memory if I had to, because I don't yet have a full understanding of how it all fits. Hashes within hashes and
# all that business, really makes my head spin. This should still be relatively easy though, right? I'm beginning
# to wonder if I'm going to make it when things get really difficult. I know I need to give myself time and practice
# to learn concepts, but that's not what my instincts want me to do. If I don't learn something immediately, then I
# immediately wonder "What's wrong with me? Everyone else gets it". Then the frustration compounds and things spiral
# downward. I'm really too hard on myself... we can't really learn things like in the Matrix where you just plug
# yourself in and you instantly know it. BUT HOW COOL WOULD THAT BE IF THAT ACTUALLY WORKED??