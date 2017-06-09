var doSomething = function() {
  console.log("opps");
}


console.log("hey");
console.log("now");
setTimeout(doSomething, 2000);
console.log("you");


var poop = function() {
  document.body.style.backgroundColor = "darkolivegreen"
}
var flush = function() {
  document.body.style.backgroundColor = "mintcream"
}



var poopBtn = document.querySelector("#poopBtn")
var flushBtn = document.querySelector("#flushBtn");

poopBtn.addEventListener("click", poop) // callback

flushBtn.addEventListener("click", flush)
