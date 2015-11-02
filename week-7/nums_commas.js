// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
/* 
   Input: an integer
   Output: a string with commas separating the integer
   -make a function separateComma that will take an integer number argument
   -convert the integers into a string and put in an array
   -reverse array
   -iterate through the array adding a comma at index "2" or after every 3rd index position
   -reverse array and combine into a string


*/
// Initial Solution


var separateComma = function(number) {
	var string = number.toString();  //converts integer to string
	var array = [];  //empty array
	var array2 = [];

	for (var counter = 0; counter < string.length; counter++) {  //this first uses a counter to iterate through 'string' step wise and places each string-number in reverse order using unshift
		array.unshift(string[counter])                           //unshift puts the string at the beginning of the array
	}

	for (var counter = 0; counter < array.length; counter++) {   //for example: 1000000
		if (counter % 3 === 0 && counter != 0){					 //          => 0 0 0 0, 0 0 1,
			array[counter] = (array[counter] + ",")              
		}
		else {
			array[counter] = (array[counter])
		}
	}

	for (var counter = 0; counter < array.length; counter++) {   //          => 1, 0 0 0, 0 0 0
		array2.unshift(array[counter]);
	}

	array2 = array2.join("");                                     //    => 1,000,000
	console.log("Here it is with commas: " + array2);
}

separateComma(1000000);
separateComma(1000);
separateComma(100000);
separateComma(10000);


// Refactored Solution

var separateComma = function(number){
	var array = number.toString().split("").reverse();

	for (var counter = 0; counter < array.length; counter++) {
		if (counter % 3 === 0 && counter != 0) {
			array[counter] = (array[counter] + ",");
		}
	}
	array = array.reverse().join("");
	console.log("Here it is with commas: " + array);
}

separateComma(1000000);
separateComma(1000);
separateComma(100000);
separateComma(10000);

// Your Own Tests (OPTIONAL)




// Reflection
/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

I think the approach was pretty similar though a lot of the formatting and syntax was different because of the discrepancy
between the two languages. Both commas exercises I reversed the integer as a string and placed a comma by indexing it
in an array at the appropriate gradation. This was done with logical operators like && and "if"/"else" conditionals.
I don't remember entirely what I did in the Ruby version but here I used the iteration using "for" and a counter variable
that also served as a marking for the indexing of the string.

What did you learn about iterating over arrays in JavaScript?

There is a little more syntax you have to add in order to iterate in JS than in Ruby and isn't entirely built in.
In JS you use a 'for' loop and have to write out countered parameters to explain how to iterate (as opposed to use for
example a Ruby #each). There is a degree in freedom in JS that Ruby doesn't have; it is easier to manipulate objects
in JS.


What was different about solving this problem in JavaScript?

There wasn't a real major difference other than the rift in syntax between the two languages.

What built-in methods did you find to incorporate in your refactored solution?

A number of built in methods such as: #toString, #split, #reverse, #length, and "join"

*/