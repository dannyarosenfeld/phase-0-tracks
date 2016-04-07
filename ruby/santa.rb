class Santa
def initialize(gender, ethn)
	@gen_eth = [gender, ethn]
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

santas = {}
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

ethnic = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
santas[genders[i]] = ethnic[i]
end



santa1 = Santa.new("Ambiguous", "Asian")

p santas

santa1.speak
santa1.eat_milk_and_cookies("mint")