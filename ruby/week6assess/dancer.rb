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
		new_card = @card.delete(@card[0])
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




#chose to limit 