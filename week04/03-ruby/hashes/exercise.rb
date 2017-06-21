require "pry"

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}


jonathan_numbers = users["Jonathan"][:favorite_numbers]
erik_numbers = users["Erik"][:favorite_numbers]
anil_numbers = users["Anil"][:favorite_numbers]

all_numbers = [jonathan_numbers, erik_numbers, anil_numbers]


return_array = jonathan_numbers & erik_numbers & anil_numbers

return_array2 = jonathan_numbers | erik_numbers | anil_numbers

binding.pry
