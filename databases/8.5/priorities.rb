#require gems
require 'sqlite3'
require 'faker'

#make call to create sql database
db = SQLite3::Database.new("priorities.db")
#create methods to create sql tables high priority low priority
#with completed? Boolean column


create_low_priorities = <<-SQL
CREATE TABLE IF NOT EXISTS low_priorities(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
complete BOOLEAN,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
)
SQL


create_high_priorities = <<-SQL
CREATE TABLE IF NOT EXISTS high_priorities(
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

db.execute(create_low_priorities)
db.execute(create_high_priorities)
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

def add_high(db, name, complete, user_id)
complete = "incomplete"
db.execute("INSERT INTO high_priorities (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
puts "added high priority"
end

def add_low(db, name, complete, user_id)
complete = "incomplete"
db.execute("INSERT INTO low_priorities (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
puts "added low priority"
end

def show_priorities(db, user_name)
puts "Low Priorities"
p db.execute("SELECT * FROM low_priorities WHERE user_id=?", [user_name])
puts "High Priorities"
p db.execute("SELECT * FROM high_priorities WHERE user_id=?", [user_name])
end

#create method to mark item as Completed
def mark_complete(db, complete, name)
	complete = "complete"
	db.execute("UPDATE low_priorities SET complete=? WHERE name=?", [complete, name])
	db.execute("UPDATE high_priorities SET complete=? WHERE name=?", [complete, name])
	puts "set #{name} to complete"
end

def delete_item(db, name)
	 db.execute("DELETE FROM low_priorities WHERE name=?", [name])
	 db.execute("DELETE FROM high_priorities WHERE name=?", [name])
	puts "deleted #{name} from priorities"
end
#create_user(db, "this should do it")



	puts "are you new to the priorities app? y/n "
	y_or_n = gets.chomp.to_s
	if y_or_n == "y"
		puts "enter a new user name to begin"
		new_user_name = gets.chomp.to_s
		create_user(db, new_user_name)
		#add_high(db, "withdrawal money", "false", 1)
		#add_low(db, "take a bubble bath", "false", 1)

		users = db.execute("SELECT * FROM users")
		#p users
		users.each do |user|
			if user[1] == new_user_name
				delete_user(db, user[0])

				show_priorities(db, user[0])
			end
		end
		

		p users
		#p new_user_name
		
	else
		
		users.each do |user|			
			if user[1] == new_user_name
				show_priorities(db, user[0])
			end
		end
	end
	#p users
	
	puts "okay what priority would you like to create for #{new_user_name}?"






#create_user(db, "blah yeah")
add_high(db, "feed the dog", "false", 1)
add_low(db, "get a haircut", "false", 1)
=begin

 show_priorities(db, 1)

 db.execute("SELECT * FROM low_priorities Where user_id=1")

puts priorities.class
puts priorities 

mark_complete(db, "true", "feed the dog")
delete_item(db, "get a haircut")

=end

p users
priorities = db.execute("SELECT * FROM low_priorities, high_priorities")
#priorities.class
#priorities


#delete_user(db, "blah yeah")



p users




loop do
	puts "Enter an existing username"
	new_or_exist = gets.chomp.to_s
	p new_or_exist

	users.each do |user|
		if user[1] == new_or_exist
			show_priorities(db, user[0])
		end
	end

	puts "okay what priority would #{new_or_exist} like to update?"
end
