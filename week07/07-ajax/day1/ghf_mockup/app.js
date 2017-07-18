var starDoms = document.querySelectorAll(".star")
// var likeDoms = document.querySelectorAll(".like-str")
//
// starDoms.forEach(function(element) {
//   element.addEventListener("click", function(event) {
//     var likeStr = event.target.parentElement.parentElement.children[3].children[0]
//     likeStr.textContent = (parseInt(likeStr.textContent) + 1).toString() + " likes"
//   })
// })


var starDom = document.querySelector(".star")
var likeDoms = document.querySelector(".like-star")

var updateCount = function(event) {
  // console.log(event.target);

  // target we want is the colest element with .count
  var uiCard = event.target.closest(".ui-card")
  var countSpan = uiCard.querySelector(".count")
  countSpan.textContent = parseInt(countSpan.textContent) + 1
}

// starDoms.forEach(function(element) {
//   element.addEventListener("click", updateCount)
// })

var bodyDom = document.querySelector("body")
bodyDom.addEventListener("click", function(event) {
  if (event.target.className === "star") {
    updateCount(event);
  }
})
