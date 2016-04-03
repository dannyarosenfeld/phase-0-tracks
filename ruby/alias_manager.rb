#write a method that loops through every consonant letter of the alphabet
#and returns the next consonant

#write a method that loops through every vowel
#and returns the next vowel
=begin
def consonants
	alphabet = "bcdfghjklmnpqrstvwxyz"
	index = 0
	string = ""
	while index < alphabet.length	
		letters = alphabet[index].next
		index += 1
		string += letters
		
	end
	string
end


def vowel(letter)
alphabet = "aeiou"
current_letter = alphabet.index(letter) + 1
alphabet[current_letter]
end


def decrypt(word)
	index = 0
	string = ""

	while index < word.length
		char = word[index]
		index += 1
		string += vowel(char)
	end
	string
end


decrypt("aeiou")

=end

def vowel(letter)
vowels = "aeiou"
each_id = vowels[vowels.index(letter) + 1]

end


def alphabet(letter)
alphabet = "bcdfghjklmnpqrstvwxyz"
each_id = alphabet[alphabet.index(letter) + 1]

end

def swap(word)

	alphabet = "bcdfghjklmnpqrstvwxyz"
	vowels = "aeiou"
	new_string = ""
	index = 0

	word.split('').each do |letter|
		if vowels.include?(letter)
			
			new_string += vowel(letter)
		
		elsif alphabet.include?(letter)
			
			new_string +=  alphabet(letter)
		else
			new_string += letter
		end
	end



	new_word = new_string.split(' ')
	p word
	new_word[0], new_word[1] = new_word[1], new_word[0]
	new_string = new_word.join(" ")
	
	end



p swap("bob saggot")

# puts decrypt("aeiou")




=begin


def fake_name(full_name)
	new_name = ""
	vowels = "aeioua"
	cons = "bcdfghjklmnpqrstvwxyzb"
	full_name.chars.each do |letter|
		if vowels.include?(letter)
			new_name << vowels[vowels.index(letter.downcase)+1]
		elsif cons.include?(letter)
			new_name << cons[cons.index(letter.downcase)+1]
		else
			new_name << letter
		end
	end
	name_array = new_name.split(" ")
	name_array.reverse!
	new_name = name_array.map(&:capitalize).join(" ")
end


p fake_name("bob saggot")


=end