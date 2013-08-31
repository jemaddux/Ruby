puts "What is the coupon rate? (in $):"
coupon = gets.to_f
puts "What is the rate?"
rate = gets.to_f

puts "Perpetuity is worth: $" + (coupon/(rate/100)).to_s
