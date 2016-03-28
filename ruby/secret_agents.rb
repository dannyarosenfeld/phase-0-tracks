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

 
 #encrypt("abc")
 #encrypt("zed")

#define a method decrypt
#with parameter of input
#set index to 0
#create placeholder string with ""
#create alphabet variable
#loop through word moving 1 letter backwards every letter
#create variable each_letter and set it to
#the alphabet.index(the current letter of input)
#subtract 1 from the alphabet letter number each time a_to_z[each_letter - 1]
#add that to the empty string
#print the string

#fix spacing and capitalization errors with conditionals 

 def decrypt (input)
 	index = 0
 	string = ""
 	a_to_z = "abcdefghijklmnopqrstuvwxyz !"
 	while index < input.length
 		if input[index] == "a"
 			string += "z"
 		else
	 		each_letter = a_to_z.index(input[index].downcase)
	 		string += a_to_z[each_letter - 1]
 		end
 		index += 1
 	end
 	p string
 end


#decrypt("bcd")
#decrypt("afe")

#ask for password encryption(agreement)
#set answer to gets.chomp
#ask for pass
#set pass to gets.chomp
#add conditionals to check for answer
#if not encrypt/decrypt tell them to try again

loop do
	puts("Hi, you wanna encrypt/decrypt a password?")
	encrypt_or_decrypt = gets.chomp

	puts("okay, give me the pw!")
	password = gets.chomp

	if encrypt_or_decrypt == "encrypt"
		puts("encrypted yay!")
		p encrypt(password)
		break

	elsif encrypt_or_decrypt == "decrypt"
		puts("decrypted yay!")
		p decrypt(password)
		break

	else
		puts("please enter encrypt or decrypt") 
		end
end


# nested method here
# fiddled with fixing spacing and downcase issues
# decrypt(encrypt("The duck flies at midnight"))

