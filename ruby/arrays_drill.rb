
#At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.
def add_to_array(a, b)
  a << b
end

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)
p add_to_array(["c", true], 5)



#At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.
def do_array (a,b,c)
  array = [a,b,c]
end

p do_array("tacos", 7, true)




#Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
array = []
p array

#Add five items to your array. Print the array.
array << "1"
array << "2"
array << "3"
array << "4"
array << "5"
p array

#Delete the item at index 2. Print the array.
array.delete_at(2)
p array

#Insert a new item at index 2. Print the array.
array.insert(2, "new 3")
p array

#Remove the first item of the array without having to refer to its index. Print the array.
array.shift
p array


#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
if array.include?("new 3") == true
  p "winning"
else
  p "try again"
end


#Initialize another array that already has a few items in it.
tacos = ["chicken", "hot sauce", "cheese"]

#Add the two arrays together and store them in a new variable. Print the new array.
new_array = tacos + array
p new_array






