# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers (integers and floats!)
# Output: summation of those numbers
# Steps to solve the problem.

=begin

define a method that takes an array

we're going to iterate through the array and add each number together

output the total

=end

# 1. total initial solution

def total(arr)
  output = 0
  arr.each do |x|
    output += x
  end
  output
end

# 3. total refactored solution

def total(arr)
  return arr.inject(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: Those strings consolidated in a single sentence
# (That sentence should be capitalized and end in a period) May have to taper off the spacing somehow..
# Steps to solve the problem.

=begin
define a method that takes an array

we're going to iterate through array and join the strings together to form a sentence

return our string capitalized

=end


# 5. sentence_maker initial solution

def sentence_maker(arr)
  output = ""
  arr.each do |word|
    output += (word.to_s + " ")
  end
  output.capitalize.strip + "."  
end

# 6. sentence_maker refactored solution
=begin
Returns a string created by converting each element of the array to a string, 
separated by the given separator. If the separator is nil, it uses current $,. 
If both the separator and $, are nil, it uses empty string.
=end

def sentence_maker(arr)
  arr[0] = arr[0].capitalize
  return arr.join(" ") + "."
end


