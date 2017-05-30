console.log('hello');

if (5 > 4) {
  console.log("math is easy");
}

var wdi12 = true;// global variable

// scope

if (wdi12) {
  console.log("wdi12 rocks!");
}

// truthy and falsey

// varlues that are falsey - false, empty string, 0, undefined, null, NaN
var name = "danny";
if (name) {
  console.log("hello " + name);
}
// return true


var points = 0;
if (points) {
  console.log("you have " + points);
}
// return false

var firstname;
if (firstname) {
  console.log("your name is " + firstname);
}
// return false

var uuu = 5==5 ? 5: 8
console.log(uuu);
