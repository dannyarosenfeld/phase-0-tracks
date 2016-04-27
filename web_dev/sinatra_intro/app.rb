# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
=begin
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end
=end

get '/:campus' do
  all_names = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]]) 
  string = ""
  all_names.each do |name|
     string << "#{name['name']} goes to SF to learn at DBC <br><br>"
  end
string
end
# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
  p student.to_s
 
end

get '/contact' do
  address = "1300 McTree Ave, SF"
  address.to_s
end

get '/great_job/' do
  name = params[:name]
  if name
    return "Good Job, #{name}!"
    return name.to_s
  else
    return "Good Job!"
  end
end

  get '/:num1/plus/:num2' do
    "hello world"
    num1 = params[:num1]
    num2 = params[:num2]
  
    "#{num1} plus #{num2} = #{num1.to_i + num2.to_i}"

  end


