puts "Hello, and welcome to seventh grade English."
sleep 0.5
puts "My name is Mrs. Gabbard."
sleep 1
puts "And your name is...?"
name = gets.chomp
sleep 1
if name == name.capitalize
	puts "Please take a seat, " +name+ "."
else
	puts name+ "?"
	sleep 1
	puts "You mean " +name.capitalize+ ", right?"
	sleep 1
	puts 'Don\'t you even know how to spell your name dummy? (yes/no)'
	reply = gets.chomp
if reply.downcase == 'yes'
	puts "Hmmph!"
	sleep 1
	puts "Well, sit down!"
else
	sleep 1
	puts "GET OUT!"
end
end