puts ("what's the hamsters name?")
name = gets.chomp.to_s

puts ("you named the hamster #{name}")
puts ("How loud is the hamster from 1-10?")
how_loud = gets.chomp.to_i

while how_loud > 10 || how_loud < 1
	puts "Please rate loudness from 1-10"
	how_loud = gets.chomp.to_i
end

if how_loud >= 1 || how_loud <= 10
	puts("Hamster rated #{how_loud} out of 10 in loudness")
end	


puts ("what's the fur color of hamster?")
fur = gets.chomp.to_s
puts("the hamster's fur color is #{fur}")

puts ("good candidate for adoption(yes, no)?")

yes_or_no = gets.chomp


until yes_or_no == "yes" || yes_or_no == "no"
	puts("please answer yes or no!")
	yes_or_no = gets.chomp.to_s
end

if yes_or_no == "no"
	puts("No? well take him anyway :)")
end

if yes_or_no == "yes"
	puts("Yaay!! sign him up!")
end


puts ("How old is the hamster?")
puts ("give me an integer please")
age = gets.chomp

if age == "" || age == " "
	age = nil
	puts ("age is set to nil because you didn't enter anything")
	puts ("give me an integer please")
	
end

age = gets.chomp.to_i
puts("The hamster is #{age} years old")

