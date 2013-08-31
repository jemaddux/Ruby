puts "Trying 9/2"
puts 9/2
puts "You got 4 because it was integer division."
puts "Try 9.0/2"
puts 9.0/2
puts "You got 4.5 this time, right?"

puts "................"

puts "blinks "*8
puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'

myString = '...you can say that again...'
puts myString
puts myString

var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i

puts "Write something:"
puts "You wrote: " + gets.chomp.to_s
puts "****************************"
puts ""

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ""

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ""

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ""

lineWidth2 = 40
str = '--> text <--'
puts str.ljust  lineWidth2
puts str.center lineWidth2
puts str.rjust  lineWidth2
puts str.ljust(lineWidth2/2) + str.rjust(lineWidth2/2)
puts ""

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts 365.0%7.4
puts""

puts "Random numbers below:"
puts rand
puts rand
puts rand*rand
puts(rand(100))
puts "Above will give you numbers from zero to 99 ^^^^."
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')
puts""

puts "Gonna seed the random number so they are the same:"
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts""

puts"Time for some math"
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)