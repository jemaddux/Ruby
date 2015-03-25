puts "What is your full name?"
name = gets.chomp
puts "What is the width?"
width = gets.to_i
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name: " + name + "?"
puts name.upcase
puts name.downcase
puts name.swapcase
puts name.capitalize
puts name.center(50)
puts name
puts ""

puts "Old Mother Hubbard".center(width)
puts "Sat in her cupboard".center(width)
puts "Eating her curds and whey".center(width)
puts "blah blah blah".center(width)
puts "This is on the left".ljust(width)
puts "This is on the right".rjust(width)