#require gems
require 'sqlite3'
require 'faker'

#make call to create sql database
db = SQLite3::Database.new("priorities.db")
#create methods to create sql tables high priority low priority
#with completed? Boolean column


create_upper_body = <<-SQL
CREATE TABLE IF NOT EXISTS upper_body(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
complete BOOLEAN,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
)
SQL


create_lower_body = <<-SQL
CREATE TABLE IF NOT EXISTS lower_body(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
complete BOOLEAN,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
)
SQL

create_users_table = <<-SQL
CREATE TABLE IF NOT EXISTS users(
id INTEGER PRIMARY KEY,
user_name VARCHAR(255)
)
SQL

db.execute(create_upper_body)
db.execute(create_lower_body)
db.execute(create_users_table)

#methods to insert users and priorities

def create_user(db, user_name)
db.execute("INSERT INTO users (user_name) VALUES (?)", [user_name])
puts "added new user"
end

def delete_user (db, user_name)
	db.execute("DELETE FROM users WHERE user_name=?", [user_name])
	#puts "deleted #{user_name} from users"
end

def add_lower_body(db, name, complete, user_id)
complete = "incomplete"
db.execute("INSERT INTO lower_body (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
puts "added leg workout"
end

def add_upper_body(db, name, complete, user_id)
complete = "incomplete"
db.execute("INSERT INTO upper_body (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
puts "added upper body workout"
end

def show_priorities(db, user_name)
puts "Upper Body Exercises"
p db.execute("SELECT * FROM upper_body WHERE user_id=?", [user_name])
puts "Leg Exercises"
p db.execute("SELECT * FROM lower_body WHERE user_id=?", [user_name])
end

#create method to mark item as Completed
def mark_complete(db, complete, name)
	complete = "complete"
	db.execute("UPDATE upper_body SET complete=? WHERE name=?", [complete, name])
	db.execute("UPDATE lower_body SET complete=? WHERE name=?", [complete, name])
	puts "set #{name} to complete"
end

=begin
def delete_item(db, name)
	 db.execute("DELETE FROM low_priorities WHERE name=?", [name])
	 db.execute("DELETE FROM high_priorities WHERE name=?", [name])
	puts "deleted #{name} from priorities"
end
=end
#create_user(db, "this should do it")
	users = db.execute("SELECT * FROM users")
	
	if users.empty?
		create_user(db, "erica phd")
		add_upper_body(db, "deltoid fly", "false", 1)
		add_upper_body(db, "decline bench", "false", 1)
		add_lower_body(db, "weighted squats", "false", 1)

		create_user(db, "jacob platcow")
		add_upper_body(db, "chest press", "false", 2)
		add_upper_body(db, "lateral raise", "false", 2)
		add_lower_body(db, "leg lifts", "false", 2)

		create_user(db, "amy r")
		add_upper_body(db, "lat pull downs", "false", 3)
		add_lower_body(db, "calf raise", "false", 3)
		add_lower_body(db, "leg press", "false", 3)
	end
	
loop do
	puts "are you new to the fit app? y/n "
	y_or_n = gets.chomp.to_s
	if y_or_n == "y"
		puts "enter a new user name to begin"
		new_user_name = gets.chomp.to_s
		create_user(db, new_user_name)
		

		users = db.execute("SELECT * FROM users")
	
		puts "here is #{new_user_name}'s fitness plan/profile"
		users.each do |user|
			if user[1] == new_user_name
				delete_user(db, user[0])

				show_priorities(db, user[0])
			end
		end
		
		puts "here are all existing users. #{new_user_name} is the latest addition"
		p users
		puts "what exercise would you like to create for #{new_user_name}?"
		
	loop do
		puts "enter an exercise type 'done' when finished"
		priority_input = gets.chomp.to_s
		break if priority_input == "done"

	
		puts "is this an upper body exercise or a leg exercise? (u/l)"
		u_or_l = gets.chomp.to_s			

		if u_or_l == "u"
			#priorities = db.execute("SELECT * FROM low_priorities, high_priorities")
			users.each do |user|
				if user[1] == new_user_name
					add_upper_body(db, priority_input, "false", user[0])
					show_priorities(db, user[0])
				end
			end		
			
		elsif u_or_l == "l"
			#priorities = db.execute("SELECT * FROM low_priorities, high_priorities")
			users.each do |user|
				if user[1] == new_user_name
					add_lower_body(db, priority_input, "false", user[0])
					show_priorities(db, user[0])
				end
			end		

		else
			puts "please enter 'u' or 'l' when prompted, now list your exercise here"
		end
	end


	elsif y_or_n == "n"
		break
	else
		puts "please enter 'y' or 'n'"
	end
		
end

		


	#p users
	
	






#create_user(db, "blah yeah")
#add_high(db, "feed the dog", "false", 1)
#add_low(db, "get a haircut", "false", 1)
=begin

 show_priorities(db, 1)

 db.execute("SELECT * FROM low_priorities Where user_id=1")

puts priorities.class
puts priorities 

mark_complete(db, "true", "feed the dog")
delete_item(db, "get a haircut")

=end



#priorities.class
#priorities


#delete_user(db, "blah yeah")


loop do
	users = db.execute("SELECT * FROM users")
	puts "here is a list of all of our users"
	p users
	puts "Browse each user's profile by entering an existing username- type 'done' to continue"
	new_or_exist = gets.chomp.to_s
	break if new_or_exist == "done"
	puts "here is #{new_or_exist}'s profile"

	users.each do |user|
		if user[1] == new_or_exist
			show_priorities(db, user[0])
		end
	end
end


loop do 
	puts "Holy moly! You've become the personal trainer now/ all powerful administrator!"
		users = db.execute("SELECT * FROM users")
	puts "here is a list of all of our users"
	p users
	puts "select a user to gain access to their profile- type 'done' to give up your administrative powers"
	new_or_exist = gets.chomp.to_s
	break if new_or_exist == "done"
	puts "here is #{new_or_exist}'s profile"

	users.each do |user|
		if user[1] == new_or_exist
			show_priorities(db, user[0])
		end
	end

	puts "enter the name of the exercise you want to mark as complete for #{new_or_exist}"
	exercise_name = gets.chomp.to_s


	users.each do |user|
		if user[1] == new_or_exist
			mark_complete(db, "true", exercise_name)
			puts "you just marked #{exercise_name} as complete on #{new_or_exist}'s profile"
			show_priorities(db, user[0])
		end
	end
end

puts "I hope you had fun!  Try creating a new user for the best experience!"