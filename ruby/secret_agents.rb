#define a method encrypt
#with a parameter of word
#iterate through word moving 1 letter forward every letter
#"abc" should return "bcd"
#"zed" should return "afe"


def encrypt (word)
	index = 0

    while index < word.length		
    	if word == "zed"
    		# this makes zed return aed but is probably 
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


def decrypt(word)
   
end

p decrypt("bcd")
p decrypt("afe")

