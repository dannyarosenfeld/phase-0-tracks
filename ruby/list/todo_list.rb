class TodoList
attr_accessor :get_items
def initialize
	@get_items = ["do the dishes", "mow the lawn"]
	@get_items
end

def add_item(item)
	@get_items.push(item)
	@get_items
end

def delete_item(item)
	@get_items.delete(item)
	@get_items
end

def get_item(index)
	item = @get_items[index]
	item
end

end
list = TodoList.new

p  list.get_items
p  list.add_item("mop")
p  list.get_item(0)
p  list.delete_item("do the dishes")

