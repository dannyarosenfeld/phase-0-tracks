
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
def encrypt (input)
	index = 0
	string = ""
	while index < input.length
=begin
    	if input[index] == "z"
             #returning aafe instead of afe for some reason
             #don't know why
    		input[index] = "a"
    	else
=end
		each_letter = input[index].next
		string += each_letter
		#end
		index += 1
	end
	p string
end

 
 encrypt("abc")
 encrypt("zzed")


#define a method decrypt
#with parameter of input
#set index to 0
#create placeholder string with ""
#create alphabet variable
#iterate through word moving 1 letter backwards every letter
#set each_letter to index of input with .next method

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

