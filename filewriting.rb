x = 0
puts "How many times?"
x = gets.chomp.to_i
aFile = File.new("testfile.txt","w")
   x.times do
	y = "Fuck, Fuck, Fuck a duck.!!!!!!"
	aFile.puts(y)
	x = x + 1
   end
aFile.close
puts "Done."