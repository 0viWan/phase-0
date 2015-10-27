# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Keep all of the logic and variables inside of the class BingoBoard. Method calls should be outside.

-DEF initialize board with instance variable @bingo_board that takes board argument

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  -DEF generate_letter
  - create a letters variable that holds an array of letters (b, i, n, g, o)
  - create an instance variable that will generate a random letter from the array
  -DEF generate_number
  - create an @ variable that will generate a random number from 1 - 100
  -DEF generate_pair
  - save both values of the generated letter and number in another instance @pair

# Check the called column for the number called.
# If the number is in the column, replace with an 'x'
  #fill in the outline here
  -DEF check_column
  -Take index number of every number in the rows using the board nested array, and couple that with the index number
   of the column letter of the board. If those mapped out indexes of the row and column drawn (and hence the correct num)
    equal the number generated, then replace that with an 'x'
  -IF not, print out that mapped element of the hash (to create a print out of the board)


# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here
  -I WANT TO CLEAN THIS UP EVENTUALLY, RAN OUT OF TIME

=end
# Initial Solution


  class BingoBoard

  def initialize(board)
    @bingo_board = board

    raise ArgumentError.new "This is not an array #{board.inspect}" unless board.is_a?(Array)
   raise ArgumentError.new "There should be five rows #{board.inspect}" unless board.length == 5
  end

  def generate_letter
    @letters = ["B", "I", "N", "G", "O"]
    @column = rand(0..4)
    @letter = @letters[@column]
  end

  def generate_number
    @number = rand(1..100)
  end

  def generate_pair
    self.generate_letter
    self.generate_number
    @pair = "#{@letter}#{@number}"
    p @pair
  end

  def check_column
    self.generate_pair
    puts @letters.join("   ")
    @bingo_board.map! do |row|
      if row[@column] == @number
        row[@column] = "X"
        p row
      else p row
      end
    end
  end


end



# Refactored Solution  #DIDNT HAVE TIME BUT WILL REVISIT
=begin
The bingo board given is just populated with random numbers from 1 - 100. 
However, true bingo boards are constructed a bit differently. 
Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30),
 "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.

Create a method that creates a legal bingo board.
=end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check_column

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

This challenge relied heavily on psuedocoding to map out the logic step-by-step. It would be very easy to
slip up in the various logic and definitions, if it were not for an organized plan. I think that my
pseduocoding style is to generally write out things very literally with more explanation than is probably
needed, just because that helps me solidify my outline mentally. I think I could learn how to abbreviate this
further in the future, but for now I am sticking to this style because it makes me more comfortable.

What are the benefits of using a class for this challenge?

Using a class for this challenge could make the game apply to different boards easily, and not just the
board provided for the exercise. You can also run the program multiple times with the same instance board, and
even program the code to destructively save the "x" on the board and use that the instance until BINGO is met.
I did not program it this way, but plan to revisit this exercise to get more in depth with it.

How can you access coordinates in a nested array?

You can access coordinates in a nested array via multiple ways. One such way we just learned about is with the
proper syntax using the multiple brackets and reference points to call on the correct element in the nest.
For example: In this example if I called board[2][1], this would refer to the 2nd element of the 3rd row of this
particular bingo board. That 3rd row in this case is formatted as a "row", but actually represents an array in a nest, and
is the 3rd array of 5 nested in a larger, outer array holding them all. There are also methods to call
on specific array items in a nest such as '.at(index_number)'

What methods did you use to access and modify the array?

I used map! to access the index number of the individual elements of the bingo board and used that in conjunction
with the column placing to give a corresponding value on the board. If that value was the same as the number generated
for BINGO, then that was replaced with an "x".

How did you determine what should be an instance variable versus a local variable?

Instance variables are variables that can be applied to instances of a class; if I would like to access a variable 
between methods for example, I would use an instance variable. Conversely, local variables are used for a specific
method, or block of code it was created in and is not passed outside of those parameters.

What do you feel is most improved in your refactored solution?  

I actually was not able to refactor the solution, but if I did I actually would have added more features and do
  the optional material but I ran out of time.
  
=end