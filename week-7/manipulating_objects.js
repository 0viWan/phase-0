 // Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {}

adam.name = "Adam";

terah.spouse = adam;

terah.weight = 125;

delete terah.eyeColor;

adam.spouse = terah;

terah.children = {};

terah.children.carson = {name: "Carson"};

terah.children.carter = {name: "Carter"};

terah.children.colton = {name: "Colton"};

adam.children = terah.children;



// __________________________________________
// Reflection: Use the reflection guidelines
/*
What tests did you have trouble passing? What did you do to make it pass? Why did that work?

I didn't have too much trouble with making most of the test's pass, I think if I came into problems it could
have been from sloppy syntax such as forgetting to end expressions with ";" or even spelling something incorrectly.
This could easily be solved by reading the error messages in node and also referring the respective assert tests
to see where the error might lie. I did have trouble at first passing the tests where I had to add the individual kid (such as Carson) property to the
value of the 'terah' children property. I wasn't sure if I could simultaneously create a Carson object while also placing it in 'terah'.
After playing around with this expression I got it work with literal variable notation.

How difficult was it to add and delete properties outside of the object itself?

It was interesting creating objects within other objects using the "hash notation" of Ruby; that took some getting
used to because it could potentially cause you problems if you forgot what language you are working in.  Once you got
the jist of using dot notation to add properties outside of an object or using 'delete' it wasn't too hard to grasp.

What did you learn about manipulating objects in this challenge?

It seems very straightforward, even more so than Ruby. Using dot notation makes sense and seems to make JS a bit more approachable.

*/
// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)