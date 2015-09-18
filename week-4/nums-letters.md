- "puts" in Ruby stands for "put string" and will simply write onto the console/screen whatever comes after it. "Puts" does not return or compute anything, it is a function that outputs what you tell it to output followd by a new line. If you would like to evaluate code AND print to a console the function "p" is used. Similar to "puts" is "print", which also does not compute code and return nil, but this without the addition of a new line.

- An integer is a number without a decimal point while a float, aka. "floating-point number" is one with a decimal point. For example, an integer could be "-205" while its float equivalent could be "-205.3126".

- The difference betwen float and integer division is that arithmetic with floats (hence division) will yield output with decimal points, while those with integers will yield whole numbers without the decimal placing. Computers will also always round down when it can't get an exact whole number in integer division. To better understand this let's say you have $9 in your wallet and you want to go buy a hot dog on the streets of The Mission. Those greasy, delicious hot dogs cost $4, so how many hot dogs can you buy? If this were float division the answer would be "2.5", but since you can't buy half a hot dog (though this does sometimes sound appealing) the integer division answer would be that you could buy "2" hot dogs with the nine bucks you have.

...

puts 24*365
...

...

puts 60*24*365.25*10
...