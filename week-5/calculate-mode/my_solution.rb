# Calculate the mode Pairing Challenge

# I worked on this challenge [with: John Paul (JP) Chaufan]

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin
#What is the input?  An array of numbers or strings
What is the output? (i.e. What should the code return?) the mode; the most frequently ocurring string or number
What are the steps needed to solve the problem?
  -make a hash to keep track of each item's frequecy
  -iterate through the input array
  -create a key for each different thing in the input array
  -use the value to keep track of how often each thing shows up
  -check the most frequent value    
  -output the most frequent value
=end

# 1. Initial Solution


def mode (array)
  # -make a hash to keep track of each item's frequecy
  tracker = {}
#   -iterate through the input array
  array.each do |x|
#   -create a key for each different thing in the input array
    if tracker.has_key?(x)  # use the value to keep track of how often each thing shows up
      #increment the value up by 1
      tracker[x] += 1
      puts "#{x} is incrementing"
    else
      #add it
      tracker[x] = 1
      puts "#{x} is being set"
    end  
    # -check the most frequent value    
        
    puts "tracker hash is like this: #{tracker}"
    
  end 
  puts "array.each part done"
  
  final_values = tracker.values
  highest = 0
  final_values.each do |x|
    if x > highest
      highest = x
    end  
    
  end
  puts "highest is #{highest}"
  
  
  # find all the highest values and put em in an array
  output = []
  tracker.each do |key, value|
    if value == highest
      output << key
    end
    
  end
  return output
end
mode([1, 2, 3, 4, 5, 1, 2, 2])

#### Cleaned-Up Version:
# mode takes an array of items, and returns an array with the item(s) that appear most frequently
def mode (array) 
# creates a hash(tracker) with items as keys and frequencies as values
  tracker = {}  
  array.each do |x|  
    if tracker.has_key?(x)  
      tracker[x] += 1
    else
      tracker[x] = 1
    end  
  end 
# finds the highest value (frequency)
  final_values = tracker.values
  highest = 0  
  final_values.each do |x|
    if x > highest
      highest = x
    end    
  end
# adds each key (item) with the highest value to the output array
  output = []
  tracker.each do |key, value|
    if value == highest
      output << key
    end
  end
  return output
end
=end




# 3. Refactored Solution

# mode takes an array of items, and returns an array with the item(s) that appear most frequently
def mode (array) 
# creates a hash(tracker) with items as keys and frequencies as values
  tracker = {}  
  array.each do |x|  
    if tracker.has_key?(x)  
      tracker[x] += 1
    else
      tracker[x] = 1
    end  
  end 

# adds each key (item) with the max value to the output array
  output = []
  tracker.each do |key, value|
    if value == tracker.values.max
      output << key
    end
  end

  return output
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

My pair and I decided to use a hash data structure because of its inherent ability of associating a key with
a corresponding value pair. In this particular instance our key-value pair were the 'items' (integer or string)
paired with their value of 'frequency' of occurence of the key itself.

ex: item n (key): frequency (value)

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

Since we started pseduocoding I have been a proponent of the process; it really helps me form the 
architecture of my thoughts and generally keeps my work focused. I was happy to see that my pairing partner JP
was equally willing and able to use pseudo-code throughout, and even ocassionally write comments in the code just
to reinforce the thought process, if we ever revisit the exercise at a later date; it's always better to be explicit to
save you the trouble of having to figure it out again. In summary, I like psuedocoding, and I think that we are all
getting better at it with every exercise we work on.

What issues/successes did you run into when translating your pseudocode to code?

We were successful in the sense that we were able to complete the work with alternate, cleaned-up solutions
in about two hours. That said, we definitely had our share of issues along the way. The biggest issue was that
even with the pseudocode, we had not thought out the logical flow of the work exactly right. When all was said and done after
a lot of trial-and-error, we came up with a method broken down into three parts: 1) Take an array and iterate through it to
take each item (number or string) and return its frequency as a value in a hash. 2) Now that the frequency of each
item is "tallied" in a hash, iterate through that hash to find the item with the highest frequnecy. 3) Find all
the highest values (as there can potentially be a tie) and return that in an array (the rspec wants the
answer in an array). This last step took us a while to figure out because we had forgotten that the
required output was an array, and not a hash.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used:
has_key?
.values
.max
They were all useful for refactoring; they weren't very difficult to implement after spending time prior
trying to clean up the code; when you are shopping it's easier to find something when you know what you
are looking for.

=end