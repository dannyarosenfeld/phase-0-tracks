#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#  require_relative points to a data set or toolkit(instruction set) 
#   that resides within the working directory
#  it is subset of require, which just points to a data set or toolkit 
#   (instruction set) with the ruby program

require_relative 'state_data'

class VirusPredictor

  #when new instance is created initialize method runs
  #every state is initialized with state_of_origin, population_density, population input
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #returning two different methods predicted_deaths and speed_of_spread
  #which are both private methods below
  #displays in one continuous string to the console the return values of     both methods
  
  def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
      death_rate(@population_density, @population, @state)
  end

  private

  
  #takes population_density and checks value, rounds that value down
  #returns in a string that integer with the state name 
 
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

  #single method attempt for predicted_deaths merged with speed_of_spread
  
  def death_rate(population_density, population, state)
    # predicted deaths is solely based on population density
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
#===========================================================
  
  #takes two params, runs through conditions and adds various speeds to   speed variable
  #and outputs a string
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

 

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=begin
STATE_DATA.each do |state|
  VirusPredictor.new(STATE_DATA[state], STATE_DATA[state][:population_density], STATE_DATA[state][:population])
end
=end

STATE_DATA.each do |state|
  
  VirusPredictor.new(state[0], state[1] [:population_density], state[1][:population]).virus_effects
end
#=======================================================================
# Reflection 


# episode_1 = luke&darth
# episode_2 = episode_1 + han&leia
# episode_3 = episode_2 + lando

