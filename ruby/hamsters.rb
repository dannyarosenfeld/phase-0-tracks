puts ("what's the hamsters name?")
name = gets.chomp
name.to_s
puts ("you named the hamster #{name}")

puts ("How loud is the hamster from 1-10?")
how_loud = gets.chomp
how_loud.to_i
puts("Hamster rated " + how_loud + " out of 10 in loudness")

puts ("what's the fur color of hamster?")
fur = gets.chomp
puts("the hamster's fur color is #{fur}")

puts ("good candidate for adoption(yes, no)?")
yes_or_no = gets.chomp

if yes_or_no == "yes"

	puts("Yay! we'll take him")

	elsif yes_or_no == "no"

	puts("Oh well, please come back with a nicer hamster next time!")


	else
	puts("you didn't put yes or no!")
end	



puts ("How old is the hamster?")
age = gets.chomp
age.to_i

if age == ""

	age = nil
	puts(age)
else
	puts("The hamster is" + age + "years old")

end