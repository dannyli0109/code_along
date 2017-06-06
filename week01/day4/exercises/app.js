// 1. Write a function named calculateAge that:
// - takes 2 arguments: birth year, current year.
// - calculates the 2 possible ages based on those years.
// outputs the result to the screen like so: "You are either 100 or 101"
// - Call the function three times with different sets of values.

// your code here

var calculateAge = function(birthYear, currentYear) {

  if (currentYear > birthYear) {
    return "You are either " + (currentYear - birthYear - 1) + " or " + (currentYear - birthYear) + " years old"
  } else if (currentYear === birthYear) {
    return "You were born this year"
  } else {
    return "You haven't born yet"
  }



}
console.log(calculateAge(1993, 2017));
console.log(calculateAge(2017, 2017));
console.log(calculateAge(2018, 2017));

//  2. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.

// your code here
var arr = ["A","ab","abc","sdhaskjdkash"]

var lengths = function(stringArray) {
  var returnArray = []
  for (var index = 0; index < stringArray.length; index ++) {
    returnArray.push(stringArray[index].split('').length)
  }
  return returnArray
}
console.log(lengths(arr));

// 3. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the product of the first two numbers,
// raised to the power of the third number.

// your code here
var transmogrifier = function(first, second, third) {
  return Math.pow((first * second), third)
}

console.log(transmogrifier(2,2,3));

// 4. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.

// your code here
var wordReverse = function(inputString) {
    return inputString.split(" ").reverse().join(" ");
}
console.log(wordReverse("apple pen"));
