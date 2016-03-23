puts ("what's the hamsters name?")
name = gets.chomp


puts ("How loud is the hamster from 1-10?")

how_loud = gets.chomp
how_loud.to_i

puts ("what's the fur color of hamster?")
fur = gets.chomp

puts ("good candidate for adoption(yes, no)?")
yes_or_no = gets.chomp
yes = true
no = false



puts ("How old is the hamster?")
age = gets.chomp

if age == ""

	age = nil

end