

var btn = document.querySelector('button');
var nums = document.querySelectorAll(".input")
var equals = document.querySelector(".equals")
btn.addEventListener("click", function() {
  var sum = Number(nums[0].value) + Number(nums[1].value)
  equals.textContent = sum
})
