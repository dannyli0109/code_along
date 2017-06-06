
// find the button
var btn = document.getElementsByTagName('button')[0]

// find the body (entire page)
var body = document.body;

// listen to the click event

// add event listener is a function that takes 2 arguments. first one is the event,
// second argemnet is a function
var colorChanged = false
var changeColour = function() {
  colorChanged = !colorChanged
  document.body.style.backgroundColor = colorChanged ? randomRgbColor() : "white"
}


body.addEventListener("click", changeColour)


function randomRgbColor() {
  var r = Math.floor(Math.random() * 256)
  var g = Math.floor(Math.random() * 256)
  var b = Math.floor(Math.random() * 256)
  return "rgb(" + r + "," + g + "," + b +  ")"
}
