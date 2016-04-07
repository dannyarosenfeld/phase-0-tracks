def create_items(item)
 	grcy_array = item.split(" ")
 	grcy_hash = {}
 	grcy_array.map do |item|
 	grcy_hash[item] = 0
 	end
 	grcy_hash
end

p create_items("carrots potatoes tomatoes straweberrits")


# Method to add an item to a list
# input: item name and optional quantity
# steps: 
#step1: define method add_item with parameters item and qty
#step2: make item hash key with value of qty
# output:
new_grcy_hash = create_items("carrots potatoes tomatoes straweberrits")

def add_item(grcy_hash, item, qty)
 grcy_hash
 grcy_hash[item.to_sym] = qty.to_i
 grcy_hash
end

p add_item(new_grcy_hash, "carrtos", 2)



# Method to remove an item from the list
# input:
# steps: def a method remove_item parm of item, then set item as key of grcy_hash, then run delete method
# then return the hash
# output:

new_grcy_hash2 = add_item(new_grcy_hash, "carrtos", 2)

def remove_item(grcy_hash, item)
 grcy_hash.delete(item)
 grcy_hash
end

p remove_item(new_grcy_hash2, "potatoes")


# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:



