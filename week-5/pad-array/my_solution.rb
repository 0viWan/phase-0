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
=begin

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

=end
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

Our initial solution did not pass the tests. Though most of the syntax was logical for our destructive
method, we had simply made minor errors: We did not close out the method properly with 'end', and we also 
used parentheses instead of brackets for appending the values to the array. These issues were solved
easily by reading the respective error messages, going to the appropriate line of code, and then reworking
it to get no failures when we re-ran the program. We encountered more issues with our program with the 
non-destructive method, and spent a lot of time rethinking our logical approach to adding to an array without making it
destructive. What finally worked was creating a new array object in the method, that would take the contents of the 
original array object, and allow to permanently pad the array without destroying the original. We also realized after
receiving an error message that we had to '.flatten' this new array to "smooth" it out and create one "whole" array (as 
opposed to arrays within the array); our code finally ran after we employed the .flatten method.

When you refactored, did you find any existing methods in Ruby to clean up your code?

In the answers above, I included two refactored solutions, one of which I prefer and included as my "#1 Initial Solution"
I didn't find it necessary to utilize another RubyDocs method, since the ".times" enumerator method was sufficient and I was
able to edit down the code so the ".flatten" method wasn't even needed any more. I prefer brevity with ample clarity;
there isn't a real need for me at least to dress it up when this works perfectly well. I didn't find anything in Ruby Docs
that was directly applicable to the objective at hand.

How readable is your solution? Did you and your pair choose descriptive variable names?

The solution is very readable, and I also included comments for my own sake just so I can refer back to what is going
on and the thought process behind the method. We chose descriptive variable names but kept them as simplistic as possible
for the overall progression and flow of the program. 

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods (indicated by a "bang", '!') are methods that are marked as permanently modifing the receiver. This
means that if a "bang method" is called (some_method!), the function of the methods will alter the objects they are 
acting upon to essentially overide the original objects as altogether new objects (based on what the method function
is telling the object to do. Though these methods are labeled as being "destructive" that term may be a bit harsh;
destructive methods indicated with a "!" are also meant just to be a casual heads-up for the respective change
in the syntax of your program. This is the opposite for non-destructive methods; those preserve the receiving objects 
and do not permanently affect the receiver.
=end


