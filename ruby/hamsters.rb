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

yes = "yes"
no = "no"

yes_or_no = gets.chomp.to_s

while yes_or_no != (yes || no)
	puts("please answer yes or no!")
	yes_or_no = gets.chomp.to_s
end	


if yes_or_no == no
	puts("Oh well, please come back with a nicer hamster next time!")
elsif yes_or_no == yes 
	puts("Yay! we'll take him")
end




=begin
until (yes_or_no = "yes" || yes_or_no = "no")
	puts("please answer yes or no!")
	yes_or_no = nil
	yes_or_no = gets.chomp
end



if yes_or_no == "yes"
	puts("Yay! we'll take him")
elsif yes_or_no == "no"
	puts("Oh well, please come back with a nicer hamster next time!")
else
	puts("you didn't put yes or no!")
end	

=end


puts ("How old is the hamster?")
age = gets.chomp.to_i

while age.is_a?Integer
	puts ("gimme an integer please!!")
	age = gets.chomp.to_i
end

if age.is_a?Integer == false
	puts("The hamster is #{age} years old")
end

=begin

if age == ""

	age = nil
	puts(age)
else
	puts("The hamster is #{age} years old")

end
=end