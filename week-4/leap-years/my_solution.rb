# Leap Years
# PSEDUOCODE: -Method that accepts an integer as input representative of a year
# return 'true' if the year is in fact a leap year and 'false' if not.
=begin  **Research**
1)The year is evenly divisible by 4;
2)If the year can be evenly divided by 100, it is NOT a leap year, unless;
3)The year is also evenly divisible by 400. Then it is a leap year.

 "There is a leap year every year whose number is perfectly divisible by four
 - except for years which are both divisible by 100 and not divisible by 400. 
 The second part of the rule effects century years. 
 For example; the century years 1600 and 2000 are leap years, 
 but the century years 1700, 1800, and 1900 are not. This means that 
three times out of every four hundred years there are eight years between 
leap years"

=end

# I worked on this challenge [by myself].

# Your Solution Below

def leap_year?(year)
  if year % 400 == 0
  	return true
  elsif year % 100 == 0
  	return false
  elsif year % 4 == 0
  	return true
  else
  	return false
  end
end

