# create directories for each first name only lowercased
# for each directory inside create a file named README.md

# intro
#  |
#  ---john
#      |--README.md
#  ---mary
#      |--README.md
#  ---bits
#      |--README.md

# making directories
# chaning directories
# making files
# paths
# working with array
# working with string methods

require "pry"
require "fileutils"
hackers = ["John Smith", "Mary Jane", "Bits Please"]

hackers.each do |hacker|
  first_name = hacker.split[0].downcase
  FileUtils.mkdir(first_name)
  FileUtils.cd(first_name) do
    FileUtils.touch("README.md")
  end
end

# between do and end we call it a block

binding.pry
