var div1 = document.querySelectorAll("div")[0]
var div2 = document.querySelectorAll("div")[1]
var parent = document.getElementsByClassName("parent")[0]
var logText = function(event) {
  if (event.target.tagName === "DIV") {
    console.log(event.target.textContent);
  }
}


// var logParent = function(event) {
//   console.log("this is the parent: " + event.target.tagName);
// }

parent.addEventListener("click", logText)
