- "puts" in Ruby stands for "put string" and will simply write onto the console/screen whatever comes after it. "Puts" does not return or compute anything, it is a function that outputs what you tell it to output followd by a new line. If you would like to evaluate code AND print to a console the function "p" is used. Similar to "puts" is "print", which also does not compute code and return nil, but this without the addition of a new line.

- An integer is a number without a decimal point while a float, aka. "floating-point number" is one with a decimal point. For example, an integer could be "-205" while its float equivalent could be "-205.3126".

- The difference betwen float and integer division is that arithmetic with floats (hence division) will yield output with decimal points, while those with integers will yield whole numbers without the decimal placing. Computers will also always round down when it can't get an exact whole number in integer division. To better understand this let's say you have $9 in your wallet and you want to go buy a hot dog on the streets of The Mission. Those greasy, delicious hot dogs cost $4, so how many hot dogs can you buy? If this were float division the answer would be "2.5", but since you can't buy half a hot dog (though this does sometimes sound appealing) the integer division answer would be that you could buy "2" hot dogs with the nine bucks you have.

...

puts 24*365
...

...

puts 60*24*365.25*10
...

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles arithmetic operators just as you would in any other mathematical setting, using the syntax of "+", "-", "*", and "/" respectively to compute integers or floats.

- What is the difference between integers and floats?

Integers are whole numbers without a decimal place. Floats, also known as "floating-point numbers" are numbers with a decimal place. 

- What is the difference between integer and float division?

In integer division, a whole number is divided by another whole number, resulting in...a whole number. If a whole number can't be reached entirely, Ruby will interpret an approximation and round down to the nearest whole number. As per expectation, in float division, numbers with decimal values are computed resulting in an answer that also has a decimal value. 

- What are strings? Why and when would you use them?
"Strings" in Ruby are groups of letters designated inbetween quotes. You may want to associate variables with string values, such as my_name = "Ovi". Everytime you would then further call the variable 'my_name' in your code, the output would print as "Ovi" in this circumstance. One interesting note is that numbers in a string surrounded by quotation marks will also become string values as well. Such as: puts "12" + "12" would return the value of "1212", instead of treating them as integers and rather a string value.

- What are local variables? Why and when would you use them?

Local variables are variables designated by the programmer that start with a lower case letter or an underscore character. You would use then when you want to assign a value in Ruby, that can either be a string or integer, telling to compute or interpret something now or later.

- How was this challenge? Did you get a good review of some of the basics?

This was a fairly straightforward challenge that was a good primer to Ruby and review of the basics. I think that the directions were very clear and the required reading is well thought-out in its explanation of the concepts and syntax of Ruby.

[exercise 1](https://github.com/0viWan/phase-0/blob/master/week-4/defining-variables.rb)

[exercise 2](https://github.com/0viWan/phase-0/blob/master/week-4/simple-string.rb)

[exercise 3](https://github.com/0viWan/phase-0/blob/master/week-4/basic-math.rb)