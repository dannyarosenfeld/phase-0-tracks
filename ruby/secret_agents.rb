
=begin
#"abc" should return "bcd"
#"zed" should return "afe"
# "zed" returns an extra letter
# make zed return "afe"

#define a method encrypt
#with a parameter of word

def encrypt (word)
	#set index to 0
	index = 0
	#iterate through word moving 1 letter forward every letter
    while index < word.length	

    	if word == "zed"
    		# this makes zed return afe but is probably 
    		# a sketchy hack lol
    		word = "zed".replace("aed")

    	else

		word[index] = word[index].next

		end		
    	index += 1
	end
	word
end
 
p encrypt("abc")
p encrypt("zed")


#define a method called decrypt that takes a string as a param
#the method should do the opposite of the .next method
#set index to 0
# create a-z variable and set it to "abcdefghijklmnopqrstuvwxyz"


def decrypt (word)
	index = 0
	a_z = "abcdefghijklmnopqrstuvwxyz"
	while index < word.length
		word[index] = a_z[a_z.index(word[index]) - 1]
		index += 1
	end
	word
end

p decrypt("bcd")
p decrypt("afe")
p decrypt("abc")
p decrypt("wxy")
=end



#define a method encrypt
#with a parameter of input
#set index to 0
#create placeholder string with ""
#iterate through word moving 1 letter forward every letter
#set each_letter to index of input with .next method
#increment inde by 1
#add each letter to string
#print string

#lastly add conditional statement 
#if number of input is equal to "z"
#modify string to use 1 a instead of 2
#else continue as usual

def encrypt (input)
	index = 0
	string = ""
	while index < input.length
	
		if input[index] == "z"
			string += "a"
		else		
		each_letter = input[index].next
		string += each_letter
		end
		index += 1
	end
	p string
end

 
 encrypt("abc")
 encrypt("zed")


#define a method decrypt
#with parameter of input
#set index to 0
#create placeholder string with ""
#create alphabet variable
#loop through word moving 1 letter backwards every letter
#create variable each_letter and set it to
#the alphabet with .index(the current letter of input)
#subtract 1 from the alphabet letter number a_to_z[each_letter - 1]
#add that to the empty string
#print the string

 def decrypt (input)
 	index = 0
 	string = ""
 	a_to_z = "abcdefghijklmnopqrstuvwxyz"
 	while index < input.length
 		each_letter = a_to_z.index(input[index])

 		string += a_to_z[each_letter - 1]
 		index += 1
 	end
 	p string
 end


decrypt("bcd")
decrypt("afe")

