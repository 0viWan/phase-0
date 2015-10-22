# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

=begin
 Input: The class 'GuessingGame' is initialized by taking in a correct 'answer' integer.
 		 The guess instance method takes in a 'guess' integer as the argument.
Output: The guess instance method returns symbols :high (if guess > answer), :correct (if guess = answer),
         and :low (if guess < answer). The solved? instance methods returns 'true' if the most
         most recent guess was correct, and false otherwise.
# Steps: -INITIALIZE class GuessingGame with an integer 'answer'
		 -DEF instance variabales for answer and guess, END.
		 -DEF instance method guess, which takes a guess integer as an argument
		 -IF/ELSE for if compaing guess to answer, END
		 -DEF solved? instance method
		 -RETURN true if the guess is the answer that round, false otherwise END


=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
  end

  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		return :high
  	elsif guess == @answer
  		return :correct
  	else guess < @answer
  		return :low
  	end
  end

  def solved?
  	return true if @guess == @answer;
  	return false 
  end
end

# Refactored Solution

=begin

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@guess = nil
  end

  def guess(guess)
  	@guess = guess
  	return :high if guess > @answer
    return :correct if guess == @answer
  	return :low if guess < @answer
  end

  def solved?
  	return true if @guess == @answer;
  	return false
  end
end

=end

# Reflection
=begin
	
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

I like to visualize these relationships working together like entries from a dictionary. I think of the specific class
as the word itself, such as "Dog". A "Dog" class is an overarching group, and if you looked it up in the dictionary
a dog would be defined as having certain attributes, which are parallel to 'instance variables'. Instance variables give
the dog-class character, and those features will not change across anything labeled as a "dog". Different dogs, though they may
all be mammals with four legs, will have different individual features and behaviors. This is where methods come in. Some
dogs may have spots, and some may bark; the methods themselves will differentiate how a dog can behave compared to other
dogs in the dog-class.

When should you use instance variables? What do they do for you?

Instance varaibles are for those variables you want to have scope for any methods and objects under that umbrella class.
An instance object of that class can have different values for those variables, but those variables themselves will not
differ among objects of the class. Dog-A may be have a coat that is brown, but Dog-B may have a coat that is white with 
black spots. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is basically the organized logic the programmer writes into the code to make a program behave properly,
and to make the syntax efficient, and therefore easy to read by the computer. In this particular case, we broke down the
  problem by first initializing our GuessingGame-class with instance variables 'guess' and 'answer'; we also took in 
  an integer argument as the correct 'answer'. We then defined a 'guess' method that took in a 'guess' argument by the user.
  I then used if/else conditional statments to compare the guess to the actual answer and return a symbol representing
  if the guess was correct, or too high/low. Finally I had a method solved? to relate if the guess/answer comparison 
  was solved or not. I did have some trouble tinkering around with the correct flow control, but often this was
  becuase of sloppy syntax, or an improper order-of-operations; often back-tracking and using error messages as a 
  guide would help me understand what was wrong with my flow.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

A symbol is unique and immutable; it always represents the same thing, doesn't change, and has its own unique
Object ID. This level of standardization make symbols reliable objects that have interchangability between different
methods and objects. In this particular exercise, we always want to compare how "high", "low", or "correct" a guess is
compared to the actual answer. These values of "high", "low", and "correct" will always have the same meaning;
their respective values kept standard in a represenatative symbol will add readability, DRYness, and efficiency of
the code.

