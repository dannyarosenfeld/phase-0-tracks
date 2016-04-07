# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Step one: def method call = create_items("item") Step 2: declare varible grcy_array = item.split(' ') Step 3: Create empty hash grcy
  #Step 4: Take each item of array assign to key of grcy_hash with value -1
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?] 
# output: [what data type goes here, array or hash?] hash


def create_times(item)
		grcy_array = item.split(" ")
		grcy_hash = {}
		grcy_array.map do |item|
			grcy_hash[item] = 0
		end
		grcy_hash
end

p create_times("carrots potatoes tomatoes straweberrits")


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
#step1: define method add_item with parameters item and qty
#step2: make item hash key with value of qty
# output:

def add_item(item, qty)
 grcy_hash = create_times("carrots potatoes tomatoes straweberrits")
 grcy_hash[item.to_sym] = qty.to_i
 grcy_hash
end

p add_item("carrots", 2)



# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:



