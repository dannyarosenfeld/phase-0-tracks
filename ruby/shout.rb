=begin
module Shout
#here's some psuedocode

def self.yell_angrily(words)
	words + '!!!' + " :("
end

def self.yelling_happily(words)
	words + '!!!' + " :)"
end
end

p Shout.yelling_happily("Hurray")
p Shout.yell_angrily("Raaaah")
=end

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
