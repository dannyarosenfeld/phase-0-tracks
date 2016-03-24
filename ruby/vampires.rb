puts("What is your name?")
name = gets.chomp

puts("How old are you?")
age = gets.chomp

puts(" What year were you born?")
dob = gets.chomp

puts("Our company cafeteria serves garlic bread. Should we order some for you?")
yes_or_no = gets.chomp

puts("Would you like to enroll in the company’s health insurance?")
yes_or_no2 = gets.chomp


year_of_today = 2016



if dob + age == year_of_today && (yes_or_no == "yes" || yes_or_no2 == "yes")
	puts ("Probably not a vampire.")
end