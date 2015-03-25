iAmJohn = true
iAmPurple = false
iLikeBeer = true
iEatRocks = false

puts "I am John AND I like beer:"
puts iAmJohn && iLikeBeer
sleep 2
puts""

puts "I like beer OR I am purple:"
puts iLikeBeer || iAmPurple
sleep 2
puts ""

puts "I like beer Or I am John:"
puts iLikeBeer || iAmJohn
sleep 2
puts ""

puts "NOT I eat rocks:"
puts ! iEatRocks
