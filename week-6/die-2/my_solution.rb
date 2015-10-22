# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One of these strings randomly generated. If 'Die.new' is passed an empty array, it will raise
# 		  #an argument error.
=begin
  Steps:  -Create a 'die class'
 		  -DEF a method 'initialize' which takes an array with 'n' number of strings
 		   as an argument.
		  -RAISE ArgumentError if the array argument is empty
 		  -STORE array labels as 'sides' intance variable
 		  -END

		  -Create a method 'sides' when called on die, will return the number of strings in the array.
		  -RETURN count
		  -END

 		  -Create a method 'roll' when called on die, will return one of these strings, randomly.
		  -SHUFFLE sides.
		  -RETURN one of these sides
		  -END
=end
# Initial Solution

class Die
  def initialize(labels)
  	@sides = labels       #instance variable
  		raise ArgumentError.new "You didn't enter any dice labels. Please try again." if @sides == []
  end

  def sides
  	return @sides.count
  end

  def roll
  	roll = @sides.shuffle!.sample
  	puts "Woah, you rolled a #{roll}! Kudos!"
  	return roll
  end
end


# Refactored Solution

# I Like my initial solution, and think it is largely readable, so I will include slightly different
# approach in the method used.

=begin

class Die
  def initialize(labels)
  	@labels = labels
  	@sides = labels.count
  	raise ArgumentError.new "You didn't enter any dice labels. Please try again." if @labels.empty? == true	
  end

  def sides
  	return @sides
  end

  def roll
  	roll = Random.new
  	return @labels[roll.rand(@sides)] #'rand' generates a random number at 'labels' from roll -> total number of sides in the array argument 'labels'
  end
end

=end

# Reflection
=begin
	
What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?

-The main difference between this die class and the last one, was mainly in the arguments that were taken in the
method defined by each respective class. In the former exercise, we were dealing with a simple integer (representing
the number of sides of a die) while in this case we were dealing with an array full of strings representing the sides
of a die. This means that we had to use a Ruby method such as .count to tell us how many total elements are in the argument
array, therby giving us a returned number of sides in the die. The logic did not change very much, it just added
another element in order to translate the stringed-array, into an object that could be counted, randomized, and be
selected at random.

What does this exercise teach you about making code that is easily changeable or modifiable? 

-That in order to make code that is easily changeable or modifiable, often the path of least resistance is the best
path taken. DRY code that is not redundant, or code that is readable and not over-embellished is going to be
the most direct, or efficient way to say something. Also in these particular exercises we were creating a 'class' for 
the two different types of dice; instance variables you define in the class should be properly labeled, as they
could have a large effect on the resulting logic of methods in the class.

What new methods did you learn when working on this challenge, if any?

-In the refactor I learned by reading up on RubyDocs and other sites how to use random number generation syntax properly
in Ruby such as with "Random.new" and ".rand". The later being used to set parameters from 'start' to 'end' of where
you want to method to generate numbers from.

What concepts about classes were you able to solidify in this challenge?

-DRY code
-readability
-pseduocode, and its proper form
-defining a Class, and using instance variables
-employing Ruby methods

=end
