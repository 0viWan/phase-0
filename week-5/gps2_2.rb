
# (HINT: methods can accept other methods as arguments or called within other methods)

# Create a new list
#Input: string - name of grocery list
#Output: new hash with given name
#Pseudocode 
#  define method which takes one argument- "list"
#  create new hash with "list"

def create_grocery_list(list)
  list = Hash.new
end

# Add an item with a quantity to the list
#Input:  two strings - "item" and "quantity" 
#Output: key-value pair of item and quantity
#Pseudocode
#  define method which takes three arguments - "list" and "item" and "quantity"
#  add "item" and "quantity" as key-value pair to "list"

def add_item(list, item, quantity)
  list[item] = quantity
  list
end

# Remove an item from the list
#Input: Key, in the key value pair of the item we wish to delete
#Output: Having the key value pair gone from the list
#Pseudocode hash_name.delete(key)

def delete_item(list, item)
  list.delete(item)
  list
end

# Update quantities for items in your list
#Input: three strings - "list", "item", "quantity"
#Output: updated value for given key
#Pseudocode
#  define method which takes three arguments - "list", "item", "quantity"
#  update value with quantity for item

def update_item(list, item, quantity)
  list[item] = quantity
  list
end

# Print the list (Consider how to make it look nice!)
#Input: list
#Output: lovely string with all key-value pairs
#Pseudocode
# define method which takes one argument - "list"
# create variable for lovely printed hash
# add opening stuff
# add key-value pairs
# print variable

def print_grocery_list(list)
  print_list = "Grocery List: "
  print_list += list.to_s
  p print_list
end

# Create a new list

create_grocery_list("costco_list")

costco_list = Hash.new

# Add the following items to your list
# Lemonade, qty: 2

add_item(costco_list, "Lemonade", 2)

# Tomatoes, qty: 3

add_item(costco_list, "Tomatoes", 3)

# Onions, qty: 1

add_item(costco_list, "Onions", 1)

# Ice Cream, qty: 4

add_item(costco_list, "Ice Cream", 4)

# Remove the Lemonade from your list

delete_item(costco_list, "Lemonade")

# Update the Ice Cream quantity to 1

update_item(costco_list, "Ice Cream", 1)

# Print out your list (Is this readable and nice looking)?

print_grocery_list(costco_list)

=begin
What did you learn about pseudocode from working on this challenge?

It's an organizational framework to help you process the code you are writing ahead. Instead of getting
bogged down by the jargon of the language you will eventually write, the pseudocode is meant to be
simplified and easy enough to understand for practically anybody.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Arrays and hashes are great ways to organize, order, and store lists and other forms of compiled data.
Though there was possibly a way to include an array inside our hash, we opted for simplicity and kept 
it as just that, a hash. The point of the assignment was to make a grocery list, which by intuition
tells us that a key-value pair is needed (ie. item => quantity) in order to do various methods, such
as 'add an item' and 'delete an item'. The real challange came from the inability to not use classes
in the challange, and be able to have interplay between the variables being called in the various 
methods; creating local variables and allowing them to be 

What does a method return?

A method returns whatever argument (parameter) is passed through it under the condition that 
are set in the method itself; Depending on what the parameter and its corresponding method are, that
data may be altered, stay the same, or even return nil if it can't be processed at all.

What kind of things can you pass into methods as arguments?

Practically anything in Ruby; arguments can be strings, integers, float, hashes, arrays, etc

How can you pass information between methods?

You can pass information between methods as either local or global variables, since in this case we 
we not allowed to use class variables. We also did not use global varialbes for the sake of good form,
because of the "inflexible" nature of global variables and them often being prone to buggy code.
In this case we used local variables that were interwoven in the methods by proper syntax to make sure
the could be called between each other. If this didn't happen, a local variable's meaning is void outside 
of a method.


What concepts were solidified in this challenge, and what concepts are still confusing?
I think passing variables is still a little confusing, and I think I should revist this challenge
and focus on the innerworkings of what is going on there; Overall this exercise solidified flow control
and how to yield hashes, syntax sugar, pseduocode, referencing RubyDocs, and creating a method.


=end
