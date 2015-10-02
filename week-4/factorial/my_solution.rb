# Factorial

# I worked on this challenge [with: Eric Dell'Aringa].
=begin
pseudocode:
-create method that takes an array as the argument and performers the factorial
of that integer
- will have to return that the factorial of 0 and 1 are both 1
- use a loop method to factor through every number in the array

=end

# Your Solution Below

def factorial(integer)
  output = 1
  if integer == 0 || integer == 1
    return 1
  else
    while integer > 0
      output *= integer
      integer -= 1
    end
  end
  
  return output
end