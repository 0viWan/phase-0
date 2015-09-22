# Analyze the Errors

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home." 

# 1. What is the name of the file with the error?
# The name of the file with the error is 'errors.rb'
# 2. What is the line number where the error occurs?
# The error occurs on line 8.
# 3. What is the type of error message?
# This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# There is an unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# The interpreter did not expect an equals sign between "I'm going home" and 'cartmans_phrase'
# 6. Why did the interpreter give you this error?
# Ruby doesn't let variable assignment in this particular order. Variables are first named, then operations occur after the equals sign.

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#   puts "What's there to hate about #{thing}?"
#end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file with the error is 'errors.rb'
# 2. What is the line number where the error occurs?
# The error occurs on line 182.
# 3. What is the type of error message?
# This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error came all the way at the end of the block of code of, because it was expecting an additional 'end' statement.
# 6. Why did the interpreter give you this error?
# The interpreter was given the code above, but received the wrong number of 'end' statments to close out the method.
# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The line number occurs in line 48.
# 2. What is the type of error message?
# This is a '<main>' error message.
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south-park' for main
# 4. Where is the error in the code?
# The error in code is the object itself 'south_park'
# 5. Why did the interpreter give you this error?
# It is an undefined object according to the interpreter, needs to be given context.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error occurs in line 63.
# 2. What is the type of error message?
#This is a '<main>' error.
# 3. What additional information does the interpreter provide about this type of error?
#Undefined method 'carman' for main:Object
# 4. Where is the error in the code?
# There error is the code itself, as it's calling a method without one.
# 5. Why did the interpreter give you this error?
# You are calling a method without first defining what that method is.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line number 78 and Line number 82.
# 2. What is the type of error message?
# '<main>' argument error in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error comes 
# 5. Why did the interpreter give you this error?
# You defined a method, but the definition is not meant to pass any arguments, indicated by the parentheses.
# You need to include an argument in the definition for this to work.
# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
# puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# The error occurs simultaneously in line 97 and line 101.
# 2. What is the type of error message?
# '<main>' argument error in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# There error is in the code itself, particularly at line 101 where no argument is stated.
# 5. Why did the interpreter give you this error?
# The method was defined to take the argument 'offensive_message'. but when the
# method is called upon, the argument that was defined is not stated.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
# puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line number 119
# 2. What is the type of error message?
# '<main>' argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# In 'cartmans_lie' at Line 119 and 123
# 5. Why did the interpreter give you this error?
# The defined method of cartmans_lie has two arguments to be expected 'lie' and 'name'
# but when we call upon the method in 123, their is only one argument that is made.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# <'main>' Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# In the one main line of code itself, line 139
# 5. Why did the interpreter give you this error?
# With this particular order of operations, you are saying multiply an integer by
# a string, as in "five times 'Respect my authoritay!'", which does not make
# any senese. If you interchange the string and the integer you could potentially
# repeat the string 5 times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 157
# 2. What is the type of error message?
# This is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#  Divided by 0
# 4. Where is the error in the code?
# At the division operator, or "/"
# 5. Why did the interpreter give you this error?
# In arithmetic, you can not divide by zero, it is just mathematically not possible.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 173
# 2. What is the type of error message?
# This is a Load Error
# 3. What additional information does the interpreter provide about this type of error?
# Cannot load such file
# 4. Where is the error in the code?
# The <main> code itself
# 5. Why did the interpreter give you this error?
# The interpreter is trying to load a file in the directory that is not there
# and additionally does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?

=begin There was not anything too difficult to read, though the first exercise was a
little bit confusing just because the line number error was so far down the file relative
to the code itself that was being interpreted. It just took some moments to realize
that there were insufficient 'end' statements to round out the code.

How did you figure out what the issue with the error was? 

Most of the time it took a simple analyzing of the error message to figure out what was 
wrong with the code. Referring to the location of the error, the error type, and the additional
error information that the message provides you give a lot of specific context for what is 
wrong with the code. It also helps if you are really stumped to do a Google search of the
error message as there are so many forums dedicated to debugging problematic code.

Were you able to determine why each error message happened based on the code? 

I was able to determine why each error message happened based on the code. The error messages
themselves give a pinpoint description of what is wrong and the location of the error. These
messages only take you so far though; in order to fix the mistake and understand the nature
of the error, you should also have context for Ruby syntax as well. It seems that for these
particular errors, the concepts pertaining to proper Ruby code were things I understood and 
have encountered before so nothing really threw me off guard.

When you encounter errors in your future code, what process will you follow to help you debug?

I would follow the procedure I took to complete this challenge. 1) Read the error message and 
analyze the error type, the additional information, and the location of the error itself 
2) Apply my knowledge of syntax for the language at hand. 3) Google search the error message
if I am unsure, or have never encountered the error message before. 4) Rinse, repeat.
=end

