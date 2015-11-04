 // Design Basic Game Solo Challenge

// This is a solo challenge

//"The Kessel Run"
// Your mission description: Beat a rival smuggler in under 12 parsecs on the galaxy's most notorious trade route
// Overall mission: Reach the end of the track
// Goals:
// Characters: Giz
// Objects:
// Functions:

// Pseudocode
//
//
//
//
//

// Initial Code
 
var hanSolo = {
  posX: 0,
  posY: 0,
  spice: 0,
  weapon: ["sword", 100],
  success: false,


move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    hanSolo.posX -=10;
  }
  else if(direction === 'up'){
    hanSolo.posY += 10;
  }
  else if(direction === 'down'){
    hanSolo.posY -=10;
  }
  //when Han Solo moves, Boba Fett moves too
  bobaFett.posX = Math.floor((Math.random()*100)+1);
  bobaFett.posY = Math.floor((Math.random()*100)+1);
  console.log("bobaFett's position is " + bobaFett.posX + "," + bobaFett.posY);

  //Display where hanSolo is
  console.log("hanSolo's position is " + hanSolo.posX + "," + hanSolo.posY);

  //After every move, check if the hanSolo is near the bobaFett or the spice
  if(hanSolo.posX === bobaFett.posX && hanSolo.posY === bobaFett.posY){
    console.log("You've come face to face with the nefarious bounty hunter Boba Fett! Fight him at all costs!");
    hanSolo.attack();
  }

  else if(hanSolo.posX === spice.posX && hanSolo.posY === spice.posY){
    hanSolo.success = true;
    hanSolo.spice += 100;
    console.log("You've found the Spice depot; you live to see another day you scruffy-looking Nerf-herder!!");
  }
}, //closer of the move function

attack: function() {
  if (hanSolo.posX !== bobaFett.posX && hanSolo.posY !== bobaFett.posY){
    console.log("You gotta find the bobaFett first!!");
  }
  else {
    bobaFett.health -= 15;
    console.log("-15 damage! bobaFett health: " + bobaFett.health);
    if (bobaFett.health > 100){
      console.log("Boba Fett is still alive! Fight him or die!");
    }
    else if (bobaFett.health < 0) {
      console.log("Victory! You've slayed the bobaFett!");
      sword.sharpness -= 10;
      console.log("spice for you!: +" + bobaFett.spice);
      bobaFett.spice -= 50;
      hanSolo.spice += 50;
      console.log("Now to find the rest of the spice!");
    }
  }
}
};  //end of hanSolo 1

var spice = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};

var bobaFett = {
  health: 100,
  spice: 50,
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};



hanSolo.move('up');
hanSolo.move('forward');

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
// Mission Description:
// Overall mission: Collect the treasure and move to the next level and possibly face bobaFett
// Goals:Avoid the bobaFett if possible, collect the treasure
// Characters: hanSolo, bobaFett
// Objects:hanSolo(position, health, amount of spice, sword), bobaFett(health, spice)
// Functions:moveUp, moveDown, moveForward, moveBack, attack

// Pseudocode
//Declare a 'hanSolo' object that will have properties as position and success
//Add different methods to 'hanSolo' to make it move up, down, forward and backward, attack
//Declare a 'bobaFett' object and give it a random position
//Move the hanSolo, and also assign another random position to bobaFett
//Check where hanSolo is with respect to the bobaFett and spice
//If its the same position as spice, success! If the hanSolo position is same as bobaFett,
//Kill the bobaFett with attack() and steal spice.


// Solution
/*
var hanSolo = {
  posX: 0,
  posY: 0,
  spice: 0,
  weapon: ["sword", 100],
  success: false,


move: function(direction) {
  if(direction === 'forward'){
    this.posX +=10;
  }
  else if(direction === 'back'){
    hanSolo.posX -=10;
  }
  else if(direction === 'up'){
    hanSolo.posY += 10;
  }
  else if(direction === 'down'){
    hanSolo.posY -=10;
  }
  //when hanSolo moves, bobaFett moves too
  bobaFett.posX = Math.floor((Math.random()*100)+1);
  bobaFett.posY = Math.floor((Math.random()*100)+1);
  console.log("bobaFett's position is " + bobaFett.posX + "," + bobaFett.posY);

  //Display where hanSolo is
  console.log("hanSolo's position is " + hanSolo.posX + "," + hanSolo.posY);

  //After every move, check if the hanSolo is near the bobaFett or the spice
  if(hanSolo.posX === bobaFett.posX && hanSolo.posY === bobaFett.posY){
    console.log("You've come face to face with the bobaFett! Attack!");
    hanSolo.attack();
  }

  else if(hanSolo.posX === spice.posX && hanSolo.posY === spice.posY){
    hanSolo.success = true;
    hanSolo.spice += 100;
    console.log("You reached the spice, you win!!");
  }
}, //closer of the move function

attack: function() {
  if (hanSolo.posX !== bobaFett.posX && hanSolo.posY !== bobaFett.posY){
    console.log("You gotta find the bobaFett first!!");
  }
  else {
    bobaFett.health -= 15;
    console.log("-15 damage! bobaFett health: " + bobaFett.health);
    if (bobaFett.health > 100){
      console.log("The bobaFett is still alive! Keep fighting!");
    }
    else if (bobaFett.health < 0) {
      console.log("Victory! You've slayed the bobaFett!");
      sword.sharpness -= 10;
      console.log("spice for you!: +" + bobaFett.spice);
      bobaFett.spice -= 50;
      hanSolo.spice += 50;
      console.log("Now to find the rest of the spice!");
    }
  }
}
};  //end of hanSolo 1

var spice = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};

var bobaFett = {
  health: 100,
  spice: 50,
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1)
};



hanSolo.move('up');
hanSolo.move('forward');

*/