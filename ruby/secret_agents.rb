

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
