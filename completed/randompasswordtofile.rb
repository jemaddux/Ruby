z = 1
puts "How many passwords would you like?"
x = gets.chomp.to_i
puts "How long should the password be?"
long = gets.chomp.to_i

aFile = File.new("testfile.txt","w")
   x.times do
	z1 = ('a'..'z').to_a
	z2 = ('A'..'Z').to_a
	z3 = (0..9).to_a
	zPrime = (z1 + z2 + z3).shuffle
	password = ""
	q = 0
	long.times do
		password = password + (zPrime[q]).to_s
		q = q +1
	end
	y = "Password number #{z} is #{password}."
	aFile.puts(y)
	z = z + 1
   end
aFile.close

puts "Done."