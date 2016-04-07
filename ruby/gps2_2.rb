# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Step one: def method call = create_items("item") Step 2: declare varible grcy_array = item.split(' ') Step 3: Create empty hash grcy
#Step 4: Take each item of array assign to key of grcy_hash with value 0
# set default quantity = 0
# print the list to the console [can you use one of your other methods here?] 
# output: [what data type goes here, array or hash?] hash

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
	grcy_hash.delete(item.to_sym)
	grcy_hash
end

p remove_item(new_grcy_hash2, "potatoes")

# Method to update the quantity of an item
# input: 
# steps:
# step1 create new grocery hash 3 set equal to current state of hash
# step2 define method qty_change with params hash, item, and qty
# step3 call grcy hash
# step4 call grcy_hash with key item.to_sym make equal qty.to_i
# step5 call grcry hash
#test method
# output:

new_grcy_hash3 = remove_item(new_grcy_hash2, "potatoes")

def qty_change(grcy_hash, item, qty)
	grcy_hash.delete(item)
    grcy_hash[item.to_sym] = qty.to_i
    grcy_hash
end

p qty_change(new_grcy_hash3, "tomatoes", 3)

# Method to print a list and make it look pretty
# input:
# steps:
#1. new_grcy_hash4 set equal qty_change
#2. def grcy_list set param grcy_hash
#3. use each block param put message includes item and qty  
# output:

new_grcy_hash4 = qty_change(new_grcy_hash3, "tomatoes", 3)

def grcy_list(grcy_list)
	grcy_list.each do |item, qty|
	    puts "We need #{qty} #{item}"
	end
end


#########

p add_item(new_grcy_hash, "lemonade", 2)
p add_item(new_grcy_hash, "onion", 1)
p qty_change(new_grcy_hash3, "tomatoes", 3)
p add_item(new_grcy_hash, "ice cream", 4)
p remove_item(new_grcy_hash2, "lemonade")
p qty_change(new_grcy_hash3, "ice cream", 1)
p grcy_list(new_grcy_hash4)