puts "Hello, what is your name?"
name = gets.chomp
if name == "John" || name == "Heather"
	puts "Nice name."
else
	puts "Ha Ha."
	sleep 1
	puts "You suck."	
end