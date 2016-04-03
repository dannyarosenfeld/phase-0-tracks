def next_vowel(input)
vowels = "aeiou"
string = ""
string = vowels.chars.rotate.join('')
end

p next_vowel("aeiou")

=begin


#create method for iterating through vowels
def vowel(letter)
vowels = "aeiou"
current_id = vowels.index(letter)
next_vowel = vowels[current_id + 1]
end

#create method for iterating through consonants
def consonant(letter)
alphabet = "bcdfghjklmnpqrstvwxyz"
current_id = alphabet.index(letter)
next_consonant = alphabet[current_id + 1]
end

#define method that implements previous methods
# define alphabet and vowels
#set new_string to value of empty string

def swap(word)
	alphabet = "bcdfghjklmnpqrstvwxyz"
	vowels = "aeiou"
	new_string = ""

	#break input word into array and iterate through each letter
	#if the letter is a vowel, take it and change it to next_vowel
	#if the letter is a consonant, take it and change it to consonant
	#else just add with no modification
	word.split('').each do |letter|
		if vowels.include?(letter)
			new_string += vowel(letter)
		elsif alphabet.include?(letter)
			new_string +=  consonant(letter)
		else
			new_string += letter
		end
	end

	#transform this new string into an array
	new_word = new_string.split(' ')
	p word
	#swap first and second word in array
	new_word[0], new_word[1] = new_word[1], new_word[0]
	#turn new word into string
	new_string = new_word.join(" ")
	end



p swap("felicia torres")

=end