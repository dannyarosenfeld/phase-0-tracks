#write a method that loops through every consonant letter of the alphabet
#and returns the next consonant

#write a method that loops through every vowel
#and returns the next vowel

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
current_letter = alphabet.index(letter)
alphabet[current_letter + 1]
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





def swap(word)
	
	word = word.split(' ')
	p word
	word[0], word[1] = word[1], word[0]
	word.join(' ')
end


# puts decrypt("aeiou")
puts swap("ball sack")



