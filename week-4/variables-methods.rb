puts "Hello there, and what\'s your first name?"
first_name = gets.chomp
puts "Your name is " + first_name + "? What a lovely name!"
puts "What is your middle name, " + first_name + "?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "It is a pleasure to meet you, " + first_name + " " + middle_name + " " + last_name + "."

puts "Hey stranger, wanna tell me your favorite number?"
fav_num = gets.chomp.to_i
better_number = fav_num + 1
puts "But " + better_number.to_s + " is such a bigger and better number! Maybe this should be your fave.."

# How do you define a local variable?
=begin A local variable is defined initially by a lower case letter or an underscore
proceeded by the rest of the word, and followed by an equal sign. For example ,
' my_name = "Ovi" ' is how you can define a variable.'
=end 

# How do you define a method?
=begin A method is defind
# What is the difference between a local variable and a method?
#How do you run a ruby program from the command line?
#How do you run an RSpec file from the command line?
#What was confusing about this material? What made sense?
=======
=begin How do you define a local variable?

In order to store a string for later use in a program, you need to give a string a name.
When you assign a label to a string, the label itself is known as a "variable".
The variable can be any combintation of letters and numbers, though in Ruby, the rule
mandates that the first character of the variable has to be a lowercase letter.
The inters or string associated with that variable are related with an equal sign. If you 
were to assign a string to a variable, one example might be my_string = 'cats'.

How do you define a method?

A method is defined first by the word "def" followed by the name assigned as the variable.
This name follows the same rules for assigning a variable, as in the answer above.
The variable name is followed in parentheses by the arguments of the variable, and then
the method itself. Once the method is designed, it is closed out by the word "end".
Here is an example: def print_name (first_name, last_name)
										puts first_name
										puts last_name
									end
You can now call the method 'print_name'

What is the difference between a local variable and a method?

A local variable is one that is declared within a method in Ruby. They can only be
referenced and used locally in the method they are declared in. Explicitly, code outside a method
can't see the local variables in another method. Local variables also have a lifespan
that exists only from the 'method call' to the 'method return'; Between the calls
you can not save the values in local variables, so once they've been used, that is it.


How do you run a ruby program from the command line?

In the command line navigate to the directory that has the ruby file that you are 
trying to execute. Once you are there, and if ruby is properly installed as an
interpreted language on your computer, you should be able in the terminal to type:
"ruby" followed by the 'file path name'.rb to run the ruby program.

How do you run an RSpec file from the command line?

To properly run an RSpec file from the command line, first navigate to the proper 
directory holding the .rb (Ruby) file that you are trying to analyze and debug for errors.
In the command line you should input " respec 'spec-file-name'.spec " to run a test 
on your ruby file. If a test ran according to plan, you would ideally get output
noting the number of ten ran, and the amount of failures. If you get '0' failures,
congratulations, your file is good to go. If you get a message saying that '0 examples,
0 failures', then you did not run the proper RSpec file with the test parameters.

What was confusing about this material? What made sense?

I was having trouble with the RSpec loading, and when it did I often would get
bizzare messages that I would have to look up; I spent time verifying my code and 
checking to see if I had syntax errors, or even if I had issues just running
the RSpec through the command line. The material largely made a lot of sense 
especially with the Pine's reading for the chapters on methods and variables;
he has really great delivery in the material and makes concepts easy to 
understand with the aid of intuitive examples in his reasoning. I also had a little
touble getting the write method and string syntax for the challenge where
we had to deliver a return address in one line, but after getting the proper order 
and spacing of the method, it finally ran.


>>>>>>> addreflection
