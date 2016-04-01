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







