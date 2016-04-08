
class TodoList

def initialize(item_list)
	@item_list = item_list
	@item_list
end

def get_items
	@item_list 
end

def add_item(item)
	@item_list.push(item)
	@item_list
end

def delete_item(item)
	@item_list.delete(item)
	@item_list
end

def get_item(index)
	item = @item_list[index]
	item
end

end

=begin
list = TodoList.new

p  list.get_items
p  list.add_item("mop")
p  list.get_item(0)
p  list.delete_item("do the dishes")


=end