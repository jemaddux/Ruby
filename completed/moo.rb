def say_moo number_of_moos
	number_of_moos.times do 
		puts "Mooo......"
		sleep 1
		puts "Caitlin aka Captain Moo"
		sleep 1
		puts "Ha! Fattie."
		puts
		sleep 1
	end
end

x = 1
puts "How many times?"
x = gets.to_i

say_moo x

puts "LINE BREAK!"
puts
puts


return_val = (say_moo 2)
puts return_val