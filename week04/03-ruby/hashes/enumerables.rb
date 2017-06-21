require "pry"

languages = ["js","ruby","php"]

# in js we call it higher order functions
lucky_numbers = [1,7,21]

# ruby block
languages.each do |element|
  puts element
end

song = {
  title: "call me maybe",
  artist: "jackson"
}


upcased_lanlanguages = languages.map do |element|
  element.upcase
end

# .map
# .find
# .select
binding.pry
