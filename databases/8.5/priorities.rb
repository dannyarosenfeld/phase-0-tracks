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
db.execute("INSERT INTO users(user_name) VALUES (?)", [user_name])
puts "added new user"
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
p db.execute("SELECT * FROM low_priorities WHERE user_name=?", [user_name])
puts "High Priorities"
p db.execute("SELECT * FROM high_priorities WHERE user_name=?", [user_name])
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


create_user(db, "blah yeah")
add_high(db, "feed the dog", "false", 1)
add_low(db, "get a haircut", "false", 1)
=begin
#create method to delete item
 show_priorities(db, 1)

 db.execute("SELECT * FROM low_priorities Where user_id=1")

puts priorities.class
puts priorities 

mark_complete(db, "true", "feed the dog")
delete_item(db, "get a haircut")

=end
users = db.execute("SELECT * FROM users")
p users
priorities = db.execute("SELECT * FROM low_priorities, high_priorities")
#priorities.class
#priorities

loop do
puts "Enter an existing user name or a new username to create a new account"
new_or_exist = gets.chomp.to_s
p new_or_exist
users.each do |user|

if users[user].include?(new_or_exist)

	show_priorities(db, new_or_exist)
else
	create_user(db, new_or_exist)
end
end
	
end
