# read a file i pass in
require "pry"
v1 = ARGV[0]
count = 0;
File.open(v1).each do |line|
  count += 1
end
puts("There are #{count} lines in #{v1}")

binding.pry
