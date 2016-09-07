# DBC GPS 2.2

# Method to create a hash
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps:
    # set default quantity
    # Create variable set to zero
    # Split each word into an index that creates an array
    # Turn indexes into keys
    # Set the values to our default variables, all start at zero

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output: Hash with items and values of zero

# Method to remove an item from the list
# input: item name
# steps:
  # Use delete method to remove item from hash
# output: Hash

# Method to update the quantity of an item
# input: Item we want to replace and the new quantity
# steps:
  # Set new value to new input key
# output: Hash

# Method to print a list and make it look pretty
# input: Hash Name
# steps:
  # Iterate through the list to print out each item and quantity
# output:

def create_hash(items, default_qty = 0)
  groceries = {}
  items.split.each { |food| groceries[food] = default_qty }
  groceries
end

def add_item(groceries, food, qty = 0)
  groceries[food] = qty
end

def remove_item(groceries, food)
  groceries.delete(food)
end

def update_qty(groceries, food, qty)
  add_item(groceries, food, qty)
end

def pretty_print(groceries)
  groceries.each { |food, qty| puts "You have #{qty} #{food}(s)." }
end


# foods = create_hash('apple carrot cheese')
# p foods
# updated_foods = add_item(foods, 'pizza', 3)
# p foods
# remove_item(foods, 'carrot')
# p foods
# update_qty(foods, 'cheese', 20)
# p foods

# pretty_print(foods)


# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?
#   It helps organize the steps on how to write out your code and what it does. Sometimes you will write more than you need and would
#   have to edit it along the way.
# What are the tradeoffs of using arrays and hashes for this challenge?
#   Arrays are simple for making a list of data, but using hashes will be more efficient in pulling and pushing data.
# What does a method return?
#   It returns the like action done within the method.
# What kind of things can you pass into methods as arguments?
#   You pass in parameters and arguments.
# How can you pass information between methods?
#   By returning it on the initial method and using it as an argument in other methods.
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   One concept that was solidified is you are able to pass information between methods. It is still a little confusing because
#   we have not done a lot of work doing this method.
