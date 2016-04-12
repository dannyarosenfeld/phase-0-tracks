
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