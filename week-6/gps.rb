# Your Names
# 1) Ovi Calvo
# 2) James Kirkpatrick

# We spent [2.5] hours on this challenge.
# I left the session earlier than I wanted because the coffee
# shop I was at decided to close 1 hour early! Iulia sorry about my internet
# connection!
# I spent an additional 70 minutes working on this after because James never
# sent me the coderpad data we working on.

# Bakery Serving Size portion calculator.

=begin
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3             #this error counter is not needed; you can just have a conditional statement
                                #working together with a 'raise ArgumentError Method'.
  library.each do |food|
    if library[food] != library[item_to_make]  #take all this out for DRYness, it is redundant
      p error_counter += -1                    #It's saying in an overly complicated way that if the argument input
    end                                        #does not match what is in the 'library' then trigger the error counter.
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]        #Rename variables for clarity; some of the labels complicate the
  serving_size_mod = order_quantity % serving_size         #readability of the program

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end                                                        #Define and create a method to figure out how to
                                                           #allocate leftovers
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
=end





def serving_size_calc(item_to_make, num_ingredients)

  recipe = {"cookie" => 1, "cake" => 5, "pie" => 7}
#changed "library" to "recipe", as this made more sense. It has items the bakery
# will actually make, and how many units yield in each baked good. For example, 1 Cookie will
# yield 1 cookie, 1 cake will yield 5 slices of cake, and 1 pie will yield 7 slices of pie.
if recipe.has_key?(item_to_make) == false
  raise ArgumentError.new("#{item_to_make} is not something we bake! Try again please.")
end 

#Added a method to figure out what to do with leftovers.
def leftover_calc(leftovers)

  pies = leftovers / 7            #if divisible by 7, first make pies
  remaining = leftovers % 7       #Anything not divisble by 7 is going to make cakes or cookies
  cakes = remaining / 5           #if divisible by 5, make cakes
  cookies = remaining % 5         #Anything that can't be used to make cakes is used to make cookies
  return "Suggested baking items: #{pies} pies, #{cakes} cakes and #{cookies} cookies."

end

puts
puts "You are making #{item_to_make} with #{num_ingredients} number of ingredients. Have fun!"
puts "-----------------------------------"

needed_ingredients = recipe.values_at(item_to_make)[0]
leftover_ingredients = num_ingredients % needed_ingredients

case leftover_ingredients
when 0
    puts "You can bake #{num_ingredients/needed_ingredients} pieces of #{item_to_make}."
else
    puts "You can bake #{num_ingredients/needed_ingredients} pieces of #{item_to_make} and you have #{leftover_ingredients} leftovers."
    puts leftover_calc(leftover_ingredients)
  end
end

serving_size_calc("pie", 7)
serving_size_calc("pie", 13)
serving_size_calc("pie", 26)
serving_size_calc("cake", 5)
serving_size_calc("cake", 9)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("THIS IS AN ERROR", 5)

=begin
Release 5: Reflect
On your own, add a commented reflection section to your gps.rb file. Answer the following questions in your reflection:

What did you learn about making code readable by working on this challenge?

The first thing I learned is how 'variable-assignment' is crucial to the readability of a program; My pairing partner and
I had a ton of trouble with this assignment because we were both confused what the program was even attempting to do. We read
the variables as meaning different things: my pairing partner seemed to be working one way, and that made me very
confused because I thought the program was saying something else. I was trying to keep up with his direction while 
analyzing the code to understand what I thought was going on. After the GPS session, this is what I realized: The
program is made for a baker, who has so many units of an ingredient to make cakes, pies, or cookies. This baker can
enter the type of dessert he is trying to make, and how much of the ingredient he has: the program tell you
how many units of that dessert he can make, and if there are leftovers of the ingredient, suggest what else to make.

I also learned that redundancy just adds layers of confusion to a program. It's better to take out any layers of
repetition to make it that much more easy to understand. Also formatting and indentation, though say may overlook
as being minor, makes code visually easier to process when done right.

Did you learn any new methods? What did you learn about them?

I really didn't use any new methods; I didn't want to add to the confusion by employing some new method
I've never used before and makes things more complicated for myself. We had enough trouble trying to figure
out what the mechanics of the program were.

What did you learn about accessing data in hashes? 

We used two different methods to access data in hashes: 1) ".has_key?" (to access a key) and 2) ".values_at"
(to access a value). I have used the former many times before this assignment, but I have seldom if at all used
".values_at" to access the value in a hash. I will rememeber this in the future when I have a program where I 
need to refer to the value in a hash.

What concepts were solidified when working through this challenge?

How to refactor, the importance of variable assignment, DRYness, readability, good partner-pairing practices,
good flow of your code.

=end
