puts 'Hello, and thank you for taking the time to'
puts 'help me with my experiment.'
sleep 1
puts 'My experiment has to do with the way that'
sleep 1
puts 'people feel about Mexican food.'
sleep 1
puts 'Just think about Mexican food and try to'
sleep 1
puts 'answer every question honestly.'
sleep 1
puts 'Please answer with a "yes" or a "no".'
sleep 1
puts 'My experiment has nothing to do with bedwetting.'
puts
goodanswer = false
answer = "blue"
while (goodanswer == false)
	puts 'Do you like eating tacos?'
	answer = gets.chomp.downcase
	if (answer == "yes" || answer == "no") 
		goodanswer = true
	else
		puts 'Please answer "yes" or "no".'
	end
end

goodanswer = false
while (goodanswer == false)
	puts "Do you like eating burritos?"
	answer = gets.chomp.downcase
	if (answer == "yes" || answer == "no")
		goodanswer = true
	else
		puts "Please answer \"yes\" or \"no\"."
	end
end
	