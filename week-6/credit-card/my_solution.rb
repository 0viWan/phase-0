# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

=begin
# Pseudocode

Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0
Step 4: Profit

1) Starting with the second to last digit, double every other digit until you reach the first digit.

2) Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

3) If the total is a multiple of ten, you have received a valid credit card number!

# Input: Initialize a credit card number that is exactly 16 digits, if not ArgumentError
# Output: RETURN true or false when you call the 'check_card' method
# Steps: - DEF class CreditCard; INITIALIZE by credit_num
         - DEF instance variable @array to save argument 16-digit number
         - RAISE ArgumentError if the credit_num is not 16-digit number

         - DEF method to double every other digit starting from the 2nd to last digit
         - MAP out into array by index
         - IF index is even, double that digit
         - ELSE that digit stays the same
         - Now that you have an array with the proper doubled digits, you have to separate
           the digits. Convert everything to a string and separate every number. Then map
           everything back to an array as an integer. You can now add the digits together.
         - DEF sum method to reach a summation of every number in the array
         - Finally, DEF check_card that will call 'sum' and 'double' and if the total
           is divisible by 10, then you got a match!

=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(credit_num)
    @array = credit_num
    conversion   #save instance method to call conversion for other objects later on
    
    raise ArgumentError.new("This ain't a 16-digit cc number buddy!") if @array.length != 16
  end
  
  def conversion
    @array = @array.to_s.split("").map!{|digit| digit.to_i}
  end
  
  def double
    @array.map!.with_index do |num, index|
      if index.even?
      	num *2
      else
      	num
      end
  end
    conversion
  end
  
  def sum
    @total = 0
    @array.each do |num|
      @total = @total + num
    end
    @total
  end
  
  def check_card
    double
    sum
    if @total % 10 == 0
      true 
    else 
      false
     end
  end

end

# Refactored Solution

#If there is a more DRY simplified way to express this, please let me know. I did the challenge alone so it took me more time



# Reflection
=begin
	

What was the most difficult part of this challenge for you and your pair?
What new methods did you find to help you when you refactored?
What concepts or learnings were you able to solidify in this challenge?

I found this difficult because I was not able to pair up with anyone and did it on my own. The logic was a bit interwoven
and it took a lot of trial and error to make sure all the methods were working together in harmony. I had problems with this,
but they were fixed by really understanding the scope of instance variables in a class; when I realized I could turn a method
into an instance that could be called again between methods to do the same thing, it make the code that much easier to 
understand and read. Since the way the code was structured, I had defined a class, and then defined several methods
under that which had to operate in tandem to finally be called at the end and verify the credit card number. I thought the code
here was refactored as much as is, but there are probably other methods I could employ that would express this better but 
I did not find any in time. The concepts covered here building a class, and how to use instance variables to have their reach
extend beyond to other objects in the class. Also there was more solidification of flow control and method integration.
Psuedocoding was also key with this exercise to map out the logic of all of the moving parts going on with the program.
=end