#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [3] hours on this challenge.

# 5) RELEASE-5: Apply

class NameData

	attr_reader :name

	def initialize 
	@name = "Ovi"
    end
end


class Greetings

	def initialize     #this class will initialize an instance of the NameData class in the Greetings class
	@my = NameData.new
	end

	def hello          #this class will also be able to print out a greeting to the console
	p "Hello #{@my.name}! How wonderful to see you today!"
	end
end

say = Greetings.new
say.hello


# Reflection
=begin

1) RELEASE-1: Read & Research

What are these methods doing?

You first have a class 'Profile' initialized with instance varaibles: age, name, and occupation. You next have a method
'print_info' that when called, will print out the values of these instance variables. Following that you have a grouping
of methods that either contain the initial value of the instance variables, or take arguments of new values for each of 
the instance variables, with the intention of changing those values. Then you have a method that makes a new 'Profile' object
under the name 'instance_of_profile'. Finally through interprolation, we first have some methods that print out the
original instance variables in the class, followed by a method that prints out the new instance variables that have changed,
using the 'print_info' method that was defined before.

How are they modifying or returning the value of instance variables?

The instance variables are being modified or returned within the methods themselves, which have access to them. This is possible
because the methods themselves end with the instance variables and their respective values being returned at the end; this allows
access to them in further methods where we want to modify the instances or print them out.

2) RELEASE-2: Identify the Changes

What changed between the last release and this release?

The main difference between the two was that an attr: reader method was added for the instance variable 'age'. An
attr: reader is an attribute for the class that can be read outside of the class itself, but does not change 
the value.

What was replaced?

In the previous release, there was a method that allowed access to the instance variable "age" outside of the class;
now that the attr: reader method is being used, that previous method is now redundant and was therefore removed from
the program.

Is this code simpler than the last?

The code is now slightly more DRY, so it is definitely a little bit simpler than the last

3) RELEASE-3: 

What changed between the last release and this release?

In this release, the 'age' instance variable has now been granted 'attr: writer' access, meaning that it can now
be changed outside of the definition of the 'Profile' class, but it can not be read. As a result of this new ability,
the method that was written to access and then change the value of the instance variable has been deleted because it is
no longer needed. Finally, the method written to actually change the instance variable has been shortened to reflect that
we can now access the 'attr: writer' ability for 'age' by simply calling the '.age' method.

What was replaced?

The method that was written to access the instance variable and then reassign it has been nixed in favor of the
'attr: writer' functionality.

Is this code simpler than the last?

The code has been made more DRY and efficient; it is easier to read and thus has become simplier.

6) RELEASE-6: Reflect

What is a reader method?

A reader method is one that allows the return of a value/state ( of an instance variable) outside of the class
but does not change it.

What is a writer method?

A writer method is one that allows you to change the value of an instance variable outside of the class, but
is not readable.

What do the attr methods do for you?

Attr methods make instance variables accessible (with varying degrees of functionality) outside of the boundaries
of a class definition.

Should you always use an accessor to cover your bases? Why or Why not?

Though in the short-term an attr: accessor may seem like a more efficient, or convenient option since it grants access
to reader and writer abilities for instance variables, it can also cause problems for you.  The open-ended nature
of this method makes the root of bugs in your code potentially hard to pinpoint. Also the accessibility that these
variables are able to grant can compromise the security of your program.


What is confusing to you about these methods?

The fifth release got a little tricky because of the "interwoven" nature between the various classes and the instances
being called within or outside of themselves. I had to correct several times how I called the different methods between
the two classes in order to get the code to run properly

=end
