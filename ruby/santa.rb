class Santa
def initialize
	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
end

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(type)
	puts "That was a good #{type}!" 

end


end


santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies("mint")