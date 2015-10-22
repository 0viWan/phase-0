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


When should you use instance variables? What do they do for you?


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?


Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	

