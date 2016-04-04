#create method for iterating through vowels
def vowel(letter)
vowels = "aeiou"
vowels2 = vowels.chars.rotate.join('')
each_id = vowels.index(letter.downcase)
next_vowel = vowels2[each_id]
end

#create method for iterating through consonants
def consonant(letter)
alphabet = "bcdfghjklmnpqrstvwxyz"
alphabet2 = alphabet.chars.rotate.join('')
each_id = alphabet.index(letter.downcase)
next_consonant = alphabet2[each_id]
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
	#new_word[0], new_word[1] = new_word[1], new_word[0]
	new_word.reverse!
	#turn new word into string
	
	
	#new_word.map {|names| names.capitalize}
	
	new_string = new_word.map(&:capitalize).join(" ")
	
	end



p swap("Felicia Torres")

