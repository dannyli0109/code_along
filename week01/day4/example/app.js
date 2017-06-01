// function expression
var doubleMe = function(number) {
  return number + number
}

// function declaration
// function doubleMe(number) {
//   return number + number
// }

console.log(doubleMe(5));

// passing multiple parameter will ignore the first one
console.log(doubleMe(10, 2))

var calmYourself = function(stuff) {
  return stuff.toLowerCase().replace("!", "")
}

console.log(calmYourself("NOOOOOOOOO!"));
