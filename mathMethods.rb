puts "Enter a number:"
number = gets.chomp.to_i
puts number.to_s + " squared: " + (number**2).to_s
puts number.to_s + " square root: " + (number**0.5).to_s
puts number.to_s + " modulus??? (remainder): " + (number%10).to_s
randy = rand(500)
puts number.to_s + " the absolute number of the entered number minus a random number: " + (number-randy).abs.to_s
puts randy.to_s
