#create a class called SmallDog
#set attribute reader to gender, fur length, and fur type
#set attribute accessor to breed, and age
#define initialize method with one paramater dog list and set an instance variable to that param
#define get dog_list method that returns doglist
#define a method called pet_dog return the fur length is fur type(i.e. soft)
#define method to convert age to dog years(dogs should be age 1-10 in human years)

class SmallDog
	attr_reader :fur_length, :fur_type 
	attr_accessor :name, :age_dog_years

	def initialize(name, age_dog_years)
		@name = name
		@age_dog_years = age_dog_years * 7

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
loop do
puts "Hey there! please input a name of a small dog to create one!"
answer = gets.chomp.to_s
puts "how old is #{answer}?"
age = gets.chomp.to_i
if age < 10
	dog = SmallDog.new(answer, age)

	puts "would you like to pet #{answer}? y/n"
	y_n = gets.chomp.to_s
	loop do
		
		if y_n == "y" 
		p dog.pet_dog
		break
	    elsif y_n == "n"
	    	p "okay, so you're not an animal lover that's cool"
	    	break
	    else
	    	p "please enter y/n"
	    	puts "would you like to pet #{answer}? y/n"
			y_n = gets.chomp.to_s
	    end
	end
else
puts "please enter age that's less than 10!"
end



end