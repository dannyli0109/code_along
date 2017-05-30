console.log("ready to count");

var count = 1;
while (count <= 20) {
  console.log(count);
  count++;
}

for (var count = 0; count < 20; count++) {
  console.log(count + 1);
}

for (var num = 1; num <= 100; num++) {
  var returnString = ""
  if (num % 3 == 0) {
    returnString += "Cake"
  }
  if (num % 5 == 0) {
    returnString += "Pudding"
  }
  if (returnString === "") {
    console.log(num);
  } else {
    console.log(returnString);
  }
}


var secretNumber = 42
var guess = prompt('Enter a number between 1 to 100');

while (guess != secretNumber) {
  if (guess > secretNumber) {
    guess = prompt("Please guess a lower number");
  } else if (guess < secretNumber){
    guess = prompt("Please guess a higher number");
  } else {
    guess = prompt("Please enter a number")
  }
}
console.log("You got it right!");


var line = 5
var max = line * 2 - 1
for (var num = 1; num <= max; num ++) {

  if (num % 2 != 0){
    var returnString = ""

    var space = (max - num) / 2
    var spaceCount = 0

    while (spaceCount != space) {
      if (space < 0) {
        break;
      }
      returnString += " ";
      spaceCount ++;
    }

    var symbleCount = 0

    while (symbleCount != num) {
      returnString += "$";
      symbleCount ++;
    }
    console.log(returnString);
  }
}
