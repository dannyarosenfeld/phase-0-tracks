#renan

=begin

index = 0
encrypt = "cde"

def advance (something, elsee)
    
    while elsee < something.length
      p something.reverse[elsee].next
      elsee -= 1
    end
end
 

advance(encrypt, index)

=end


def encrypt (word)
	index = 0


    while index < word.length
    	if word[index] == "a"
    		word[index] == "z"
		else 
		word = word[index].next
		
	end
    	index += 1

	end
end
 
 encrypt("abc")
 encrypt("zed")


def decrypt(word)
   
end

p decrypt("bcd")
p decrypt("afe")

