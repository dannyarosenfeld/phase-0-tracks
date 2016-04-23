#require gems
require 'sqlite3'
require 'faker'

#make call to create sql database
db = SQLite3::Database.new( "priorities.db" )
#create methods to create sql tables high priority low priority
#with completed? Boolean column
create_low_priorities = <<-SQL
CREATE TABLE IF NOT EXISTS low_priorities(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
completed? BOOLEAN
)
SQL

create_high_priorities = <<-SQL
CREATE TABLE IF NOT EXISTS high_priorities(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
completed? BOOLEAN
)
SQL

create_users_table = <<-SQL
CREATE TABLE IF NOT EXISTS users(
id INTEGER PRIMARY KEY,
user_name VARCHAR(255),
lp_id INT,
hp_id INT,
FOREIGN KEY (lp_id) REFERENCES low_priorities(id),
FOREIGN KEY (hp_id) REFERENCES high_priorities(id)
)
SQL

db.execute(create_low_priorities)
db.execute(create_high_priorities)
db.execute(create_users_table)

#insert users and priorities

def create_user(db, user_name)
db.execute("INSERT INTO users(name, completed?) VALUES (?,?)", )
end

def add_high(db, name, completed?)
completed? = "false"
db.execute("INSERT INTO high_priorities (name, completed?) VALUES (?,?)", )
end

def add_low(db, name, completed?)
completed? = "false"
db.execute("INSERT INTO high_priorities (name, completed?) VALUES (?,?)", )
end


#create method to mark item as Completed

#create method to delete item

