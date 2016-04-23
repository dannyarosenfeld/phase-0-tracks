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
end

def add_high(db, name, complete, user_id)

db.execute("INSERT INTO high_priorities (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
end

def add_low(db, name, complete, user_id)

db.execute("INSERT INTO low_priorities (name, complete, user_id) VALUES (?,?,?)", [name, complete, user_id])
end

def show_priorities(db, user_id)
puts "Low Priorities"
p db.execute("SELECT * FROM low_priorities WHERE user_id=?", [user_id])
puts "high_priorities"
p db.execute("SELECT * FROM high_priorities WHERE user_id=?", [user_id])

end
=begin
#create method to mark item as Completed
create_user(db, "blah yeah")
add_high(db, "feed the dog", "false", 1)
add_low(db, "get a haircut", "false", 1)
#create method to delete item
=end
 show_priorities(db, 1)
=begin
 db.execute("SELECT * FROM low_priorities Where user_id=1")

puts priorities.class
puts priorities 
=end