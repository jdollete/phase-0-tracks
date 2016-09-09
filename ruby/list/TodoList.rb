class TodoList

  def initialize(list)
    @list = list

  end

# Code to get the items
  def get_items
    @list
  end

# Code to add the item
  def add_item(item)
    @list << item
  end

# Code to delete the item
  def delete_item(item)
      @list.delete(item)
  end

# Code to get item
  def get_item(index)
    @list[index]
  end

end

# Driver Code
# list = ToDoList.new(["do the dishes", "mow the lawn"])
