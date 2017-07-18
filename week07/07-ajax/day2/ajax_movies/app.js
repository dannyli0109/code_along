var btn = document.querySelector("button")
var input = document.querySelector("input")
// var ul = document.querySelector("ul")

var $btn = $('button');


btn.addEventListener("click", function(event){
  event.preventDefault()
  console.log("search movie with ajax")
  var baseUrl = 'http://omdbapi.com/'
  var movieName = input.value
  var settings = {
    url: baseUrl,
    data: {
      t: movieName,
      apiKey: "2f6435d9"
    }
  }


  $.ajax(settings).done(function(response) {
    var resKeys = Object.keys(response)
    $('ul').innerHTML = ""
    resKeys.forEach(function(element) {
      $('ul').append($('<li>' + response[element]+ '</li>')[0]);
    })

    // var title = document.createElement("li")
    // var year = document.createElement("li")
    // var image = document.createElement("img")
    // image.src = response["Poster"]
    // title.textContent = "Title: " + response["Title"]
    // year.textContent = "Year: " + response["Year"]
    // ul.appendChild(title);
    // ul.appendChild(year);
    // ul.appendChild(image)
  })

  console.log("after ajax function call");
})
