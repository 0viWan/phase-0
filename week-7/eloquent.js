// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_name = "Ovi";
my_name = my_name + "Calvo";
console.log(my_name);

// Favorite Food Program

var favFood = String(prompt("Hey pal, what's your favorite food?:", ""));
alert("Hey! That's my favorite too! I love " + favFood + ".");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle

for (var triangle = "#"; triangle.length < 8; triangle += "#")
  console.log(triangle);

//FizzBuzz

for (var n = 1; n <=100; n++) {
	var output = "";
	if (n % 3 == 0)
		output += "Fizz";
	if (n % 5 == 0)
		output += "Buzz";
	console.log(output || n);
}
// Chess Board


var board = "";

for (var y = 0; y < 8; y++) {
   for (var x = 0; x < 8; x++) {
	if ((x + y) % 2 == 0)
		board += " ";
	else
		board += "#";
   }
   board += "\n";
 }

console.log(board)



// Functions

// Complete the `minimum` exercise.

var min = function(arg1, arg2) {
	if (arg1 < arg2)
		return arg1;
	else if (arg2 < arg1)
		return arg2;
	else
		return false;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Ovi",
	age: 30,
	favFood1: "Saba Shioyaki",
	favFood2: "Spaghetti and Meatballs",
	favFood3: "Peking Duck",
	quirk: "I'm a huge Star Wars nerd."
}
}