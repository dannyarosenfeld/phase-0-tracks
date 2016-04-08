#create a class called SmallDog
#set attribute reader to gender, fur length, and fur type
#set attribute accessor to breed, and age
#define initialize method with one paramater dog list and set an instance variable to that param
#define get dog_list method that returns doglist
#define a method called pet_dog return the fur length is fur type(i.e. soft)
#define method to convert age to dog years(dogs should be age 1-10 in human years)

class SmallDog
	attr_reader :gender, :fur_length, :fur_type
	attr_accessor :breed, :age

	def initialize(dog_list)
		@dog_list = dog_list
		@dog_list
		@age = rand(10)
		@length_ary = ["short hair", "medium hair", "insanely long hair"]
		@fur_length = @length_ary[@length_ary.length.rand]
		@length_ary = ["short hair", "medium hair", "insanely long hair"]
	end

	def get_dog_list
		@dog_list
	end

	def pet_dog
		puts ('')
	end




end