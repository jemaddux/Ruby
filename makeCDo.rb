request = "zoom"
while request != 'stop'
	puts "What would you like to ask C to do?"
	request = gets.chomp
	sleep 1
	puts 'You say, "C, please ' +request+ '."'
	puts ""
	sleep 1
	puts "C " +request+ "."
	sleep 1
	puts "Papa " +request+ "."
	sleep 1
	puts "Mama " +request+ "."
	sleep 1
	puts "Ruby " +request+ "."
	sleep 1
	puts "Nono " +request+ "."	
	sleep 1
	puts "Emma " +request+ "."
end