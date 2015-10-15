# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

=begin
Input:  A number input, in a class I've defined
Output: A Randomly generated number between 1 and the number
		of sides I took as the argument input
Steps:  -define a "Die" class
		-define the "initialize" method that will take the number of sides as its argument
         also define any instances (@) and account for if the input is entered as 0 or a negative number
        -define the "sides" method which returns the number of sides for the die
        -define the "roll" method which should return a random number between 1 and the
         number of sides of the die
=end
# 1. Initial Solution


class Die

  def initialize(sides)
  	 @sides = sides  # define the instance variables here
    if sides < 1; raise ArgumentError.new "Please enter more than 1 side"
    	puts "You made a #{sides}-sided die."
    end
  end

  def sides
    @sides
  end

  def roll
    roll = rand(1..@sides)
     puts "Woah, you rolled a #{roll}! Kudos!"
     return roll
  end
end


#p dice = Die.new(gets.chomp.to_i)
#p dice.sides
#p dice.roll

# 3. Refactored Solution
# Since I entered a pretty staightforward solution; I am going to try to approach
# the solution from another angle and just try to dress it up or use new methods foreign to me.

=begin
class Die

  def initialize(sides)
    @sides= [*1..sides]
    raise ArgumentError.new "Please enter more than 1 side" if sides < 1
    puts "You made a #{sides}-sided die."
  end

  def sides
    @sides.pop
  end

  def roll
    roll = @sides.sample
    puts "Woah, you rolled a #{roll}! Kudos!"
    return roll
  end
end
=end

# 4. Reflection
=begin
-What is an ArgumentError and why would you use one?

An argument error is message that is raised in IRB when arguments that are entered in methods/classes
return something that exists out of the defined, expected parameters. These can be defined by
the user as well. For example, in this exercise we constructed a "die" program that took an argument
of an unspecified number of sides. The condition to the argument was that the number of sides be a 
non-zero, positive numbeer, so anything less than that would return an "ArgumentError" I made saying to enter a
number greater than 1.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I was sucessful in implementing ruby methods such as: raising an argument error, and also the "random"
method ('rand') to shuffle the different integers staring from '1 to the specified number of sides'.
In the refactor I used methods I've used before such as ".pop" and ".sample"; the latter to 'sample', or
pick a number from an array of numbers, and the former 'pop' to basically display the last,numbered side
in an array (this would give the total number of sides of the die).

What is a Ruby class?

A class can be seen as the antecedent of an object, or like the blueprint for the object itself. A class
enables an object with innate abilites in the form of methods. Every object in Ruby in a part of some
overarching class. Another way to put this is that 'objects' are instances of 'class'.

Why would you use a Ruby class?

A Ruby class can be used to make a new method for an object. In this example a class for "Dog" is
created which has some inherent 'instance variables', such as 'name' and 'breed' associated with
this particular type of object. This says that objects now under the class:Dog will have the 
attributes of name and breed. As you can also see in this example, class has defined a method called 'bark'.
When we call ".bark" on an object in the 'Dog' class, the output will be "Ruff! Ruff!".
Classes gift objects with characteristics from the heirarchy above them.

# define class Dog  
class Dog  
  def initialize(breed, name)  
    # Instance variables  
    @breed = breed  
    @name = name  
  end  
  
  def bark  
    puts 'Ruff! Ruff!'  
  end  
  
  def display  
    puts "I am of #{@breed} breed and my name is #{@name}"  
  end  
end  
  
# make an object    
d = Dog.new('Labrador', 'Benzy')  
d.bark
d.display


What is the difference between a local variable and an instance variable?
An instance variable has more overarching implications because its reach extends to all objects
under the same class those instance variables are defined in. They generally represent an
object's state, or data; they can have unique values for each object in that class.
Local variables are variables that exist only with the start and end of a method; when a method 
is over, that variable has no further implication on the objects outside of the method.

Where can an instance variable be used?

An instance variable is utilized to hold and inform the state of an object, also called 'instance'. The
object itself when indebted with these characteristics is now "aware" of its own identification.
Instances variables can be used in the initialization of a class when you are setting up
the argument for the class itself but also when performing any method under the umbrella of that class
too. Syntax-wise they can begin with an "@" symbol and they can be used by any method or instance within their class.

=end
