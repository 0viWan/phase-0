
# Numbers to Commas Solo Challenge

# I spent [3.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin

What is the input? 
-A Positive Integer
What is the output? (i.e. What should the code return?) 
-Comma separated integer as a string
What are the steps needed to solve the problem?
1) Define the method: this method will take one argument (a positive integer)
2) The method will have to count 3 integers deep into the number
3) 3 integers deep a comma is inserted (if their is a following integer, ex. 1,000) (we will have to reverse the numbers as a string)
4) If the number is only 3 integers or less, no comma is inserted (ex. 0 - 999)
5) The method will have to continue steps 2 & 3 until the number is done.
   Possibly use a 'loop' in order to do this?

Logical Order:
-Define the method with argument input
-IF the integer input has a length of 3 or less (<=), then
	RETURN that number as a string
-ELSE reverse the number and convert it to a string
-Iterate through each character and save it to a variable, adding a comma every three characters.
 When there are less than 3 characters, stop.
-RETURN
=end
# 1. Initial Solution

=begin
def separate_comma(num) 
	num_comma = ""
	if num.to_s.length <= 3 
		then return num.to_s
	else num.to_s.reverse.split("").each do |number|
		if num_comma.length % 4 == 0 #AGH this step took forever to figure out bc the logic wasn't coming to me
			                         #I had to visually draw out the addition of commas and then realize they count at string objects as well (Of course!)
			                         # ex. 000,1  or 000,01 or 000,000,1 (account for the previous comma)
			num_comma << "," + number
		else num_comma << number
		end
	end
  num_comma[0] = ""
  num_comma.reverse 
end
end

=end

# 2. Refactored Solution

def separate_comma(num)
	num_comma = ""
	num.to_s.reverse.split("").each_with_index {|number, index|
		index % 3 == 0 && index != 0 ?  #here the modulo is "% 3" because indexing starts at "0". We are placing the comma at index "3".
		num_comma << "," + number 
		: num_comma << number} #using the "? :" question-mark-followed-by-a-colon, here is called the ternary-operator.
							   #I took out the "if" statement used in the 1st solution, the "?" becomes a "then", and the ":" means "else"
	num_comma.reverse
end


# 3. Reflection

=begin

-What was your process for breaking the problem down? What different approaches did you consider?

This problem definitely had to be broken down into logical parts, as it seemed a little more simple at the
outset than it actually was. These are things I considered as I thought about the problem: 1) I will probably have to
iterate through the number taken as input, but in order to place a comma to a number, I will have to turn the
input into a string. 2) In order to easily "place" the comma with a method, it would be easier to reverse the
string (commas are every three digits), as this easily visible when the number-with-commas is backwards (000,000,1 ie. 1 million)
3) Numbers that are less than 1,000 will not be given a comma, ie. 999. 4) If/else conditional flow statements
5) Use a hash for key-value pair, in order to access a number by its index?

I created an empty sting varaible "num_comma". Using an IF statement, I checked to see if the number input,
turned into a string, had a length of less than or equal to three. IF that was true, the number would be returned
as a string. ELSE the method took the number as a string, reversed it, and split each number apart. I iterated
through EACH number to place a comma at every 4th number as a string (ie. 000,000,1) otherwise just add the number to the string.
Finally, the number with all commas (in the num_comma variable) would be reversed again to display it as such: "1,000,000"

-Was your pseudocode effective in helping you build a successful initial solution?

Yes the pseduocode was very effective in helping me build a successful initial solution: I think how I mapped
out everything out is largely shown in the solutions I have above, but I had trouble initally figuring out how
to write a proper statement that would be able to iterate through the numbers and place a comma at the appropriate place.
The way I set up the problem I was forgetting that the "comma" is esentially a string-object as well, and it counts
as having a place (index as well).

-What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? 
Did it/they significantly change the way your code works? If so, how?

I used ".each_with_index" for the first time, as this took out some of the clutter from my inital solution; in this
way I could use the index in my conditional statment to place a comma at every 4th integer (in a reverse-string) After
tinkering around with the first solution, this came a bit easier the second time around and in my opinion, made
the code that much more legible/intuitive. Another significant thing I did which changed from the first 
solution was use a "ternary operator" (? :) instead of the if/else statments I have been using in the past.
This is just another way to play with the syntax but largely allows for the same actions to be done in your flow.
Since I had never used this I played around with it to see what actually works.

-How did you initially iterate through the data structure?

I created an empty sting varaible "num_comma". Using an IF statement, I checked to see if the number input,
turned into a string, had a length of less than or equal to three. IF that was true, the number would be returned
as a string. ELSE the method took the number as a string, reversed it, and split each number apart. I iterated
through EACH number to place a comma at every 4th number as a string (ie. 000,000,1) otherwise just add the number to the string.
Finally, the number with all commas (in the num_comma variable) would be reversed again to display it as such: "1,000,000"

-Do you feel your refactored solution is more readable than your initial solution? Why?

-It is slightly more legible that the prior solution. Though they both essentially express the same thing
I think that the refactor looks a bit tidier because of it the syntax is edited to "say more with less"


=end