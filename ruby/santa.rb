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

def celebrate_birthday(age)
	@age = age + 1
end

def get_mad_at(name)
	@reindeer_ranking.delete(name)
	@reindeer_ranking.push(name)
	@reindeer_ranking

end
end
santas = {}
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

ethnic = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
santas[genders[i]] = ethnic[i]
end
p santas

santa1 = Santa.new("Ambiguous", "Asian")
#santa1.speak
#santa1.eat_milk_and_cookies("mint")
p santa1.celebrate_birthday(5)
p santa1.get_mad_at("Dancer")