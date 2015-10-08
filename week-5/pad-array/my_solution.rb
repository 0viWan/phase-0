# Pad an Array

# I worked on this challenge [with: Deanna Warren]

# I spent [4-5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, a minimum number of objects in array, and a "padded" default value.
# What is the output? (i.e. What should the code return?) an array of at least the minimum number of objects, 
#filled where needed with the padded value
# What are the steps needed to solve the problem?
=begin

define destructive method with three arguments (an array, a minimum number of objects in array, and a "padded" default value optional.)
  IF the number of objects in the array is less than the minimum number
    make array equal to  array with padded value to make minimum number true
  ENDIF

define non destructive method with three arguments (an array, a minimum number of objects in array, and a "padded" default value optional.)
  IF the number of objects in the array is less than the minimum number
    return array with padded value to make minimum number true
  ENDIF
  
=end

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length then
  	return array
  else (min_size - array.length).times {array << value}
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new     #create a new array obeject by calling a '.new' method and save in a variable, 'new_array'
  new_array += array        #add the contents of arguments into this new_array varaible, therby preserving the original object
  if min_size <= new_array.length then  #the rest follows suit, but w/o destroying the original
  	return new_array
  else (min_size - array.length).times {new_array << value}
  end
  return new_array
end


#THIS IS OUR ORIGINAL PAIRING CODE:
=begin

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length || value == 0 then 
    p array
  else
    diff = min_size - array.length 
    diff.times {array << value}
    p array
  end
end

def pad(array, min_size, value = nil) #non-destructive
 if min_size <= array.length || value == 0 then
   new_array = Array.new
   new_array << array
   new_array.flatten!
   p new_array
 else
   diff = min_size - array.length
   new_array = Array.new
   new_array << array
   diff.times {new_array << value}
   new_array.flatten!
   p new_array
 end
end
  
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  x= (min_size - array.length)
 p  x.times {array << value} while x >= 0
end

 def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new
  new_array += array
  x= (min_size - array.length)

  if x >= 0 then x.times {new_array << value}
  end
  return new_array
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?

I think that we initially hit some road-bumps with the problem, even after breaking it down into small steps.
We got bogged down worrying about the nuances of the method, rather than looking at the main
objective (to create a non-destructive, and destructive method). We attempted to make a cursory
block of code, but then realized it was just not working together as a whole. I think after we re-read the prompt
and got acclimated with what was being asked, we finally hit our stride and were able to make two
methods, though a bit buggy. So in actuality, deconstructing the problem and just worrying about the main
idea did help. It just seemed that there were more moving parts going on at the get-go than there actually 
were, which lead us to get ahead of ourselves. Breaking down all those moving parts in our pseduocode 
was where we had our first "a-ha! moment".

Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?

Yes...and no; we didn't seem to have as much of a problem with the destructive method, and 
the pseudocode most definitely helped with the learning process. We knew firstly, that if the minimum size
required was less than or equal to the length of the array, that we would simply return back the array.
If the minimum size required was greater than the array provided in the argument, then we would pad the
array to fill these missing spots with values and return back the padded array; using the ".times"
enumberable method and the "<<" operator, this was pretty easy to accomplish. The real trouble came
when devising a non-destructive method. After a ton of trial and error intstances it finally 
dawned upon us that one way to solve it would be to create a new array (at the start of the method) 
that would take on the contents of the original array, and then be padded appropriately without 
destroying the origin in the process. The result of the method would then follow suit largely like the 
destrucitve method.

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?

When you refactored, did you find any existing methods in Ruby to clean up your code?

How readable is your solution? Did you and your pair choose descriptive variable names?

What is the difference between destructive and non-destructive methods in your own words?

=end


