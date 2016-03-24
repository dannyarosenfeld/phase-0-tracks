puts("How many employees will be processed?")

employees = gets.chomp.to_i

employees.times do

	puts("What is your name?")
	name = gets.chomp

	puts("How old are you?")
	age = gets.chomp.to_i

	puts(" What year were you born?")
	dob = gets.chomp.to_i

	puts("Our company cafeteria serves garlic bread. Should we order some for you?")
	yes_or_no = gets.chomp

	puts("Would you like to enroll in the company’s health insurance?")
	yes_or_no2 = gets.chomp

	puts("have any allergies?")
	allergies = true

	while allergies

		puts ("list them and type 'done' to continue")
		allergies = gets.chomp

		break if allergies ==  "sunshine"
		break if allergies == "done"
	end

	year_of_today = 2016

	case

	when allergies ==  "sunshine"
		puts ("Probably a vampire.")
	when name == "Tu Fang" || name == "Drake Cula"
		puts ("Definitely a vampire")
	when dob + age == year_of_today && (yes_or_no == "yes" || yes_or_no2 == "yes")
		puts ("Probably not a vampire.")
	when dob + age != year_of_today && yes_or_no == "no" && yes_or_no2 == "no"
		puts ("Almost certainly a vampire.")	
	when dob + age != year_of_today && (yes_or_no == "no" || yes_or_no2 == "no")
		puts ("Probably a vampire.")
	else
		puts ("Results inconclusive.")
	end

	puts ("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")
end