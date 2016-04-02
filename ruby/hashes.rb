# use puts and gets chomp to prompt the 
# the client for their name, age, number of children, decor theme, and so on
# set name and decor theme to strings
#set age, num children to numbers
# make this create a hash and return values entered to screen after all is answered
# prompt user to update a key and run program one more time
# use method to turn string to symbol

design_hash = {}

puts "give name"
name = gets.chomp.to_s

puts "give age"
age = gets.chomp.to_i

puts "# of children"
num_children = gets.chomp.to_i

puts "decor theme"
decor = gets.chomp.to_s

puts "phone number"
phone_num = gets.chomp.to_i

design_hash = {
	name: name,
	age: age,
	num_children: num_children,
	decor: decor,
	phone_num: phone_num
}

p design_hash



#prompt user to choose which key to update
puts "would you like to update a key?"
puts "enter either name, age, num_children, decor, phone_num"

#set answer to the key of the hash(and convert to symbol)
answer = design_hash[gets.chomp.to_sym]


#create a case that handles each input
#when input matches specific key, prompt for new value assignment
#assign user input to the value of that key
#return the new hash with updated key
# if user input is 'none' return the original hash
case answer

when answer = design_hash[:none]
	puts "Nothing to update?? Okay thanks for adding stuff to the hash!"
	p design_hash

when answer = design_hash[:name]
	puts "change value of :name"
	design_hash[:name] = gets.chomp.to_sym
	p design_hash

when answer = design_hash[:age]
	puts "change value of :age"
	design_hash[:age] = gets.chomp.to_sym
	p design_hash

when answer = design_hash[:num_children]
	puts "change value of :num_children"
	design_hash[:num_children] = gets.chomp.to_sym
	p design_hash

when answer = design_hash[:decor]
	puts "change value of :decor"
	design_hash[:decor] = gets.chomp.to_sym
	p design_hash

when answer = design_hash[:phone_num]
	puts "change value of :phone_num"
	design_hash[:phone_num] = gets.chomp.to_sym
	p design_hash	

else
	puts "Okay thanks for adding stuff to the hash!"
	p design_hash
end