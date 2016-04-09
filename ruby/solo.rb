#create a class called SmallDog
#set attribute reader to fur length, and fur type
#set attribute accessor to name, and age in dog years
#define initialize method with one paramaters name and age and set instance variables to those params
#define instance variables that use arrays and can select random data from those arrays
#define get dog_list method that returns doglist
#define a method called pet_dog which returns a string using instance variables

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
