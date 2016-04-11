class Dancer
	attr_accessor :age
	def initialize(name, age)
		@name = name.to_s
		@age = age.to_i
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
		@partner = partner
		@ary = @ary.to_a.push @partner
	
	end

	def card	
		@ary
	end

	def begin_next_dance
		p "Now dancing with #{@ary[0]}."
	end

	def limit(num)
		if @ary.length < num
			p "card contains less than #{num}"
		else
			p "Oh, no! card contains more than #{num}"
		end
	end
end




#chose to limit 