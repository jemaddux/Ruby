x = 0
puts "Say something to Grandmom."
until x == 3 do
	reply = gets.chomp
	if reply == reply.downcase
		puts "HUH?"
		sleep 1
		puts "SPEAK UP SONNY!"
		sleep 1
	elsif reply != "BYE" && reply != reply.downcase
		puts "No. Not since " +(rand(50)+1912).to_s+ "."
		sleep 1
	end
	if reply == "BYE"
		x = x + 1
		puts "Just stay a bit longer dear."
		sleep 1
	end
end
puts "Oh nevermind."
sleep 1
puts "Well bye then."
sleep 1
puts "Come see your grandmom again soon."