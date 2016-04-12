
#5.6 simple solution
#***********************************************************************************

def nex_con(letter)
	cons = "bcdfghjklmnpqrstvwxyz"
	each_id = cons.index(letter) + 1
	new_letter = cons[each_id]
	new_letter
end

p nex_con("t")

def nex_vowel(letter)
	vowels ="aeiou"
	each_id = vowels.index(letter) + 1
	new_letter = vowels[each_id]
	new_letter
end

p nex_vowel("e")


def aliass(full_name)
	full_name = full_name.downcase
	cons = "bcdfghjklmnpqrstvwxyz"
	vowels ="aeiou"
	new_string = ""

	full_name.split('').each do |letter|
		if cons.include?(letter)
			new_string += nex_con(letter)
		elsif vowels.include?(letter)
			new_string += nex_vowel(letter)
		else
			new_string << letter
		end

	end

	new_ary = new_string.split(" ")
	new_ary.reverse!
	new_ary.map do |word|
		word.capitalize!
	end
	newest = new_ary.join(" ")
	newest
end



p aliass("Felicia Torres")


#Week 6 Assessment rspec test
#name rspec file dancer_spec.rb
#*******************************************************************************

require_relative 'dancer'

describe Dancer do
  let(:dancer) { Dancer.new("Misty Copeland", 33) }

  it "has a readable name" do
    expect(dancer.name).to eq "Misty Copeland"
  end

  it "has a readable age" do
    expect(dancer.age).to eq 33
  end

  it "has a writeable age" do
    dancer.age = 34
    expect(dancer.age).to eq 34
  end

  it "twirls" do
    expect(dancer.pirouette).to eq "*twirls*"
  end

  it "bows to a partner" do
    expect(dancer.bow).to eq "*bows*"
  end

  it "can queue parters on the dance card" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    expect(dancer.card).to eq ["Mikhail Baryshnikov"]
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
  end

  it "can start the next dance in the queue" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
    expect(dancer.card).to eq ["Anna Pavlova"]
  end

    it "limits how many dancers on the dance card" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    dancer.queue_dance_with("Anna Pavlova")
    dancer.queue_dance_with("Jimmy")
    dancer.queue_dance_with("Timmy")
    expect(dancer.limit(4)).to eq "Oh, no! card contains more than 4"  
  end

end


#week 6 assessment test passing methods
#*******************************************************************************

class Dancer
	attr_accessor :age
	def initialize(name, age)
		@name = name.to_s
		@age = age.to_i
		@card = []
	end

	def name
		@name
	end

	def age
		@age
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def queue_dance_with(partner)
		@card << partner.to_s	
	end

	def card	
		@card
	end

	def begin_next_dance
		new_card = @card.shift #or @card.delete(@card[0])
		p "Now dancing with #{new_card}."
	end

	def limit(num)
		if @card.length < num
			p "card contains less than #{num}"
		else
			p "Oh, no! card contains more than #{num}"
		end
	end
end



#basic encrypt decrypt
#******************************************************************************


def encrypt(word)
index = 0
string = ""

	while index < word.length
		string += word[index].next
		index += 1
	end
string

end



p encrypt("blahblahblah")

=begin
def decrypt(letter)
	string = "abcdefghijklmnopqrstuvwxyz"
	string1 = ""
	each_id = string[string.index(letter) - 1]
	prev_lett = string[each_id]
end
=end

def decrypt(word)
	index = 0
	string = "abcdefghijklmnopqrstuvwxyz"
	string1 = ""
	while index < word.length
		each_id = string[string.index(word[index]) - 1]
		prev_lett = string[each_id]
		string1 += prev_lett
		index += 1
	end
string1
end


p decrypt("blahblahblah")





#method blocks
#***********************************************************************************

def hello_fr_inside 
  puts "start of method"
  yield("mike","danny")
  puts "end of method"
end


hello_fr_inside {|name1, name2| puts "#{name1} and #{name2} passed into the method"}


puts" delete if method"
puts "***********************"
p num_ary
num_ary.delete_if {|num| num < 3}
p num_ary


p num_hash
num_hash.delete_if {|word, num| num < 3 }
p num_hash


puts"keep if method"
puts "***********************"
p num_ary
num_ary.keep_if {|num| num < 7}
p num_ary


p num_hash
num_hash.keep_if {|word, num| num < 7 }
p num_hash


puts"select method"
puts "***********************"
p num_ary
num_ary.select! {|num| num%3 == 0}
p num_ary


p num_hash
num_hash.select! {|word, num| num%3 == 0}
p num_hash


#Virus predicter
#**********************************************************

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

  
  def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
      death_rate(@population_density, @population, @state)
  end

  private


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


STATE_DATA.each do |state|
  
  VirusPredictor.new(state[0], state[1] [:population_density], state[1][:population]).virus_effects
end

#state data nested data structure
#*******************************************************************************
#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}

#jen gilbert class solo each_with_index
#*****************************************************************************


# DBC Student Class Pseudocode

# Attributes
#   Age: Integer (readable)
#   Name: String (readable and writeable)
#   Persistent: Boolean (readable)
#	Knowledge: array (readable)

# Methods
#   google: takes an argument, frantically researches that argument
#   embrace_confusion: takes no arguments, prints a self-motivating message
#   give_feedback: takes a name, prints constructive feedback to that person

# DBC Student Class Implementation

class DBCStudent
  attr_accessor :name
  attr_reader :age, :persistent, :knowledge
  
  def initialize(name, age)
  	@name = name
  	@persistent = true
  	@age = age
  	@knowledge = []
  end
  
  def google(term)
  	puts "#{@name} frantically researches '#{term}'"
  end
  
  def embrace_confusion
  	puts "#{@name} mutters to self: 'Must ... embrace ... confusion'"
  end
  
  def give_feedback(name)
  	puts "#{@name} gives actionable, specific, and kind feedback to #{name}"
  end
  
  def learn(thing)
  	@knowledge << thing
  	puts "#{@name} learned #{thing}!"
  end
  
  def celebrate_accomplishments
  	if @knowledge.length == 0
  	  puts "#{@name} hasn't learned anything yet, but just you wait!"
  	else
  	  puts "Look at everything #{@name} has learned:"
  	  @knowledge.each_with_index do |subject, idx|
  	  	puts "#{idx + 1}. #{subject}"
  	  end
  	end
  end
end

# Test it out!

# Initialization
student = DBCStudent.new("Jennifer Gilbert", 35)

# Attributes
# Readability
puts "Checking readability:"
puts "#{student.name} is #{student.age} years old. Is persistent: #{student.persistent}. Has the following knowledge so far: #{student.knowledge}"
# Writeability
puts "Checking writeability:"
student.name = "Jen Gilbert" # let's get informal
puts "Student name is now #{student.name}."
puts "-----"

# Methods
student.celebrate_accomplishments
student.give_feedback("the Pocket Gophers")
student.embrace_confusion
student.google("How to write curriculum")
student.learn("Node")
student.learn("Canvas")
student.learn("Ruby")
student.celebrate_accomplishments


#returns =>
=begin
Checking readability:
Jennifer Gilbert is 35 years old. Is persistent: true. Has the following knowledge so far: []
Checking writeability:
Student name is now Jen Gilbert.
-----
Jen Gilbert hasn't learned anything yet, but just you wait!
Jen Gilbert gives actionable, specific, and kind feedback to the Pocket Gophers
Jen Gilbert mutters to self: 'Must ... embrace ... confusion'
Jen Gilbert frantically researches 'How to write curriculum'
Jen Gilbert learned Node!
Jen Gilbert learned Canvas!
Jen Gilbert learned Ruby!
Look at everything Jen Gilbert has learned:
1. Node
2. Canvas
3. Ruby
=> ["Node", "Canvas", "Ruby"]
=end

#Jen gilbert simple class iteration
#***********************************************************************************

class Puppy
  def initialize(name)
  	@name = name
  end
	
  def bark
  	puts "#{@name} says: Woof!"
  end
end

# we make an array of names to build puppies with
names = ["Fido", "Spot", "Duchess", "Ginger"]

# we make an empty container for our puppy collection
puppies = []

puts "Iterating through names list to create puppies ..."
names.each do |name|
  puts "Creating a puppy named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end

puts "Testing each Puppy instance in the array to make sure it can bark ..."
puppies.each do |puppy|
  puppy.bark
end

#returns =>
=begin
Iterating through names list to create puppies ...
Creating a puppy named Fido ...
There are now 1 Puppy instances in the array
----
Creating a puppy named Spot ...
There are now 2 Puppy instances in the array
----
Creating a puppy named Duchess ...
There are now 3 Puppy instances in the array
----
Creating a puppy named Ginger ...
There are now 4 Puppy instances in the array
----
Testing each Puppy instance in the array to make sure it can bark ...
Fido says: Woof!
Spot says: Woof!
Duchess says: Woof!
Ginger says: Woof!
=> [#<Context::Puppy:0x00000001d17008 @name="Fido">, #<Context::Puppy:0x00000001d16158 @name="Spot">, #<Context::Puppy:0x00000001d152a8 @name="Duchess">, #<Context::Puppy:0x00000001d14448 @name="Ginger">]
=end

#Danny rosenfeld puppies class
#***********************************************************************************

class SmallDog
	attr_reader :fur_length, :fur_type 
	attr_accessor :name, :age_dog_years

	def initialize(name, age)
		@name = name
		@age_dog_years = age * 7

		@length_ary = ["short hair", "medium hair", "insanely long hair", "a pink mohawk", "slimey hair"]
		@fur_length =  @length_ary[rand(@length_ary.length)]
		@type_ary = ["scruffy", "scraggly", "soft", "slick", "smooth"]
		@fur_type = @type_ary[rand(@type_ary.length)]
	end

	def get_dog_list
		@dog_list
	end

	def pet_dog
		puts "mmmmm, such #{@fur_length}, and oh so #{@fur_type} for a dog named #{@name}"
		puts "By the way, #{@name} is also #{@age_dog_years} in dog years! Wow!"
	end

end

=begin
dog1 = SmallDog.new("Chester")
dog2 = SmallDog.new("Bobby")
dog3 = SmallDog.new("Gracie")
dog4 = SmallDog.new("Andrew")
dog5 = SmallDog.new("Gerald")
dog6 = SmallDog.new("Tabitha")
dog1.pet_dog
dog2.pet_dog
dog3.pet_dog
dog4.pet_dog
dog5.pet_dog
dog6.pet_dog
p dog1
=end

#create new array to store instances called doggies outside of loop
#loop through input to get name and age of new instance
#if age < 10 prompt for input again
#run pet dog method if they want to pet dog
# else give them interesting response including attr accessors
# when user types 'done' exit loop and print a string using a block which includes the attributes of the
# -instance they created

doggies = []

loop do
	puts "Hey there! please input a name of a small dog to create one!"
	answer = gets.chomp.to_s
	break if answer == "done"
	puts "how old is #{answer}?"
	age = gets.chomp.to_i
	break if age == "done"

	if age < 10		
		dog = SmallDog.new(answer, age)
		doggies << dog
		puts "would you like to pet #{answer}? (y/n) come on, #{answer} has #{dog.fur_length}!"
		y_n = gets.chomp.to_s
		break if y_n == "done"
		loop do					
			if y_n == "y" 
				p dog.pet_dog				
				break
		    elsif y_n == "n"
		    	puts "okay, so you're not an animal lover that's cool."	
		    	puts "either that or you're scared of dogs that are #{dog.fur_type} with #{dog.fur_length}"
		    	puts "because that's exactly how you made #{dog.name} "	    	
		    	break
		    else
		    	p "please enter y/n"
		    	puts "would you like to pet #{answer}? y/n"
				y_n = gets.chomp.to_s
				break if y_n == "done"	
		    end
		end
	else
		puts "please enter age that's less than 10!"
	end	
end

puts "hope you had fun creating dogs and running the pet method!"

doggies.each do |dog|
puts "you made a dog named #{dog.name} who is #{dog.age_dog_years} in dog years! #{dog.name}'s fur is #{dog.fur_type} and he/she has #{dog.fur_length}"
end

#santas class
#***********************************************************************************
#***********************************************************************************

class Santa
	
	attr_reader :gender
	attr_accessor :ethnicity, :age

	def initialize(gender, ethn)
		gen_eth = [gender, ethn]
		@gender = gen_eth[0]
		@ethn =  gen_eth[1]
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)

	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}!" 
	end

	def celebrate_birthday(age)
		@age = age + 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.push(name)
		@reindeer_ranking
	end

end
#santas = {}
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnic = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#genders.length.times do |i|
#	santas[genders[i]] = ethnic[i]
#end
#p santas

santa1 = Santa.new("Ambiguous", "Asian")
#santa1.speak
#santa1.eat_milk_and_cookies("mint")
p santa1.celebrate_birthday(5)
p santa1.get_mad_at("Dancer")
p santa1.gender
p santa1.ethnicity = "hispanic"
p santa1.age

100.times do |i|
	p Santa.new(genders[rand(genders.length)], ethnic[rand(ethnic.length)])
end



#Calculator operator math assessment
#***********************************************************************************
#***********************************************************************************

# write a calculate method that can 
# do the four basic operations
def calculate(x, operator, y)
	# lots of ways to do the below part ...
	# if/elsif would have worked,
	# as would a case statement
	return x + y if operator == '+'
	return x - y if operator == '-'
	return x * y if operator == '*'
	return x / y if operator == '/'
end

# tests for calculate function ...
# if everything works, all should print 2.
# I'd comment these out normally but I'm
# leaving them for you to play with.

puts "Tests for calculate function:"
puts calculate(1, '+', 1)
puts calculate(1, '*', 2)
puts calculate(7, '-', 5)
puts calculate(12, '/', 6)

# Data structure to store previous calculations
calc_history = {}

loop do
  # prompt user for input	
  puts "Enter a calculation (or type 'done' to exit):"
  raw_input = gets.chomp
  break if raw_input == 'done'
  
  # split raw input into parts --
  # you could refactor this into its own method
  # that parses, calculates, and returns
  # the answer
  inputs = raw_input.split(" ")
  x = inputs[0].to_i # convert to int
  operator = inputs[1]
  y = inputs[2].to_i # convert to int
  
  # calculate answer
  answer = calculate(x, operator, y)
  
  # store the answer in history
  calc_history[raw_input] = answer
  
  # print the answer to the user
  puts answer
end

puts "---------"

# Iterate through history hash and print
# each calculation and its result

# you could also just loop through once and count
# the keys if you weren't aware of this approach
puts "#{calc_history.keys.length} calculations performed:"

calc_history.each do |calculation, answer|
	puts "#{calculation}: #{answer}"
end


#Module example mixin
#***********************************************************************************
#***********************************************************************************


module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}"
	end
end

class Bird
	include Flight
end

class Plane	
	include Flight
end


bird = Bird.new
bird.take_off(8000)

plane = Plane.new

plane.take_off(9000)



#Module example self
#***********************************************************************************
#***********************************************************************************



module Shout
	def yell_loud(words)
		"yells " + words.upcase! + " really loud"
	end
end

class AngryGuy
	attr_reader :name
	def initialize(name)
		@name = name
	end
	include Shout
end

class DissatisfiedCustomer
	attr_reader :name
	def initialize(name)
		@name = name
	end
	include Shout
end


angry_guy = AngryGuy.new("jimmy")
dissatisfied_customer = DissatisfiedCustomer.new("jane")

puts angry_guy.name + " " + angry_guy.yell_loud("Life is annoying!!")

puts dissatisfied_customer.name + " " + dissatisfied_customer.yell_loud("I'm allergic to this product!!")


#Grocery hash gps
#***********************************************************************************
#***********************************************************************************

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Step one: def method call = create_items("item") Step 2: declare varible grcy_array = item.split(' ') Step 3: Create empty hash grcy
#Step 4: Take each item of array assign to key of grcy_hash with value 0
# set default quantity = 0
# print the list to the console [can you use one of your other methods here?] 
# output: [what data type goes here, array or hash?] hash

def create_items(item)
    grcy_array = item.split(" ")
    grcy_hash = {}
    grcy_array.map do |item|
    	grcy_hash[item] = 0
    end
    grcy_hash
end

p create_items("carrots potatoes tomatoes straweberrits")
new_grcy_hash = create_items("carrots potatoes tomatoes straweberrits")

def add_item(grcy_hash, item, qty)
	grcy_hash
	grcy_hash[item.to_sym] = qty.to_i
	grcy_hash
end

p add_item(new_grcy_hash, "carrtos", 2)
new_grcy_hash2 = add_item(new_grcy_hash, "carrtos", 2)

def remove_item(grcy_hash, item)
	grcy_hash.delete(item.to_sym)
	grcy_hash
end

p remove_item(new_grcy_hash2, "potatoes")
new_grcy_hash3 = remove_item(new_grcy_hash2, "potatoes")

def qty_change(grcy_hash, item, qty)
	grcy_hash.delete(item)
    grcy_hash[item.to_sym] = qty.to_i
    grcy_hash
end

p qty_change(new_grcy_hash3, "tomatoes", 3)
new_grcy_hash4 = qty_change(new_grcy_hash3, "tomatoes", 3)

def grcy_list(grcy_list)
	grcy_list.each do |item, qty|
	    puts "We need #{qty} #{item}"
	end
end


#########

p add_item(new_grcy_hash, "lemonade", 2)
p add_item(new_grcy_hash, "onion", 1)
p qty_change(new_grcy_hash3, "tomatoes", 3)
p add_item(new_grcy_hash, "ice cream", 4)
p remove_item(new_grcy_hash2, "lemonade")
p qty_change(new_grcy_hash3, "ice cream", 1)
p grcy_list(new_grcy_hash4)




#Nested data example
#***********************************************************************************
#***********************************************************************************


airplane = {
    first_class: {
        pretty_name: 'First Class',
        seat_info: {
            total_seats: 6,
            seats_available: 4
        },
        meals: [
            "Leg of Pampered Lamb", 
            "Kale Salad"
        ]
    },
    business_class: {
        pretty_name: 'Business Class',
        seat_info: {
            total_seats: 12,
            seats_available: 9
        },
        meals: [
            "Sustainably Cultivated Lobster with Housemade Butter", 
            "Kale Salad"
        ]
    },
    coach: {
        pretty_name: 'Coach',
        seat_info: {
            total_seats: 50,
            seats_available: 23
        },
        meals: []
    }
}

# 1.
# Guess the return value of this line:

# airplane[:first_class][:pretty_name]

# Then uncomment the line above and check your guess.

# 2.
# Guess the return value of this line:

# airplane[:business_class][:meals]

# Then uncomment the line above and check your guess.

# 3.
# Guess the return value of this line:

# airplane[:business_class][:meals][1]

# Then uncomment the line above and check your guess.

# 4.
# How will this line affect the data structure?

# airplane[:coach][:meals].push("Sad Plastic Tray of Corn")


