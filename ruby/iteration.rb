def hello_fr_inside 
  puts "start of method"
  yield("mike","danny")
  puts "end of method"
end


hello_fr_inside {|name1, name2| puts "#{name1} and #{name2} passed into the method"}

puts "******************************"

food = ["Ramen", "Hot Dog", "Pizza"]

famous_chefs = {
  bobby_flay: "Bobby Flay",
  jet_tila: "Jet Tila",
  rachel_ray: "Rachel Ray"
}

# using .each
p food
food.each {|food_item| puts "I like #{food_item}" }
p food

#using .map! on array
p food 
food.map! do |food_item|
  puts food_item + " Obsessed"
  food_item + " Obsessed"
end
p food

# .each for hash
p famous_chefs
famous_chefs.each do |chef_key, chef_string|
  puts "#{chef_key} is the key for the string #{chef_string}" 
end
p famous_chefs

num_ary = [1,2,3,4,5,6,7,8,9]

num_hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5,
  six: 6,
  seven: 7,
  eight: 8
}


puts" delete if method"
puts "***********************"
p num_ary
num_ary.delete_if {|num| num < 3}
p num_ary


p num_hash
num_hash.delete_if {|word, num| num < 3 }
p num_hash


puts"keep if method"
puts "***********************"
p num_ary
num_ary.keep_if {|num| num < 7}
p num_ary


p num_hash
num_hash.keep_if {|word, num| num < 7 }
p num_hash


puts"select method"
puts "***********************"
p num_ary
num_ary.select! {|num| num%3 == 0}
p num_ary


p num_hash
num_hash.select! {|word, num| num%3 == 0}
p num_hash


puts"reject method"
puts "***********************"

p num_ary
num_ary.reject! {|num| num < 6}
p num_ary


p num_hash
num_hash.reject! {|word, num| num < 6}
p num_hash
