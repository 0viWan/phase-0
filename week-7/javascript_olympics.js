 // JavaScript Olympics

// I paired [by myself] on this challenge.

// This challenge took me [] hours.


// Warm Up

// Bulk Up

var sarah = {name: "Sarah Hughes",
			event: "Ladies' Singles"
},
    mike = {name: "Michael Johnson",
    		event: "400m"
},
	mia = {name: "Mia Hamm",
			event: "Women's Soccer"
};

var athletes = [sarah, mike, mia];

function winning () {
	for (var i = 0; i < athletes.length; i++) {
		athletes[i].win = athletes[i].name + " won " + athletes[i].event;
		console.log(athletes[i].win);
	}
}

winning();


// Jumble your words

function reverseIt(string) {
	console.log(string.split("").reverse().join(""));
}

var testString = "A long time ago in a galaxy far, far away....";

reverseIt(testString);


// 2,4,6,8

var newArray = [];

function evenSteven(array) {
	for (var i = 0; i < array.length; i ++){
      if (array[i] % 2 === 0){
     newArray.push(array[i]);
     }
   }

   console.log(newArray);
 }

 var arrayTest = [1,2,3,4,13,472,688,981]
 evenSteven(arrayTest);


// "We built this city"

function Athlete (name, age, sport, quote) {
	this.name = name,
	this.age = age,
	this.sport = sport,
	this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/*

What JavaScript knowledge did you solidify in this challenge?

How looping and iteration functions in JS and the general variation on how to do this compared to the manner in which you
would do it in Ruby. 


What are constructor functions?

Constructor functions are a comprable way to initialize objects in JS. This could also be considered like defining a 
Ruby class and setting parameters, functions (like Ruby methods), etc.

How are constructors different from Ruby classes (in your research)?

The logic and layers to costurctors are a little askew compared to the flow of Ruby classes. It seems like Ruby was organized
in a way where you had classes defined with methods inside of them. Constructors seems to be like functions you have defined
in other functions, so the distinction gets a little blurry in JS. I am still a little confused on how the scope of
these variables operate in JS...
*?