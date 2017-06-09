var input = document.querySelector(".input")
var add = document.querySelector(".add")
var list = document.querySelector("ul")



var cross = function(event) {
  event.target.className = event.target.className === "" ? "done" : ""
}


var addItem = function() {
  if (input.value != "") {
    var newListItem = document.createElement("li");
    newListItem.textContent = input.value
    list.appendChild(newListItem)
    input.value = ""
  }


}


list.addEventListener("click", function(event) {
  if (event.target.tagName === "LI") {
    cross(event)
  }
})
add.addEventListener("click", addItem)
document.addEventListener('keypress', function(e) {
  if (e.keyCode === 13) {
    addItem()
  }
});
