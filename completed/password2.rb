class Password
   def create(long)
	zPrime = (('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + ["!","@","#","$","%","^","&","*","(",")"]).shuffle.shuffle
	r2d2 = (long / 50) + 2.1
	zPimp = zPrime.shuffle.to_a
	r2d2.to_i.times do
		zPimp = zPimp + zPrime
	end
	q , password = 1 , ""
	long.times do
		password = password + (zPimp[q]).to_s
		q = q + 1
	end
	return password
   end
end
puts "How long would you like your password to be? (No Max Length)"
length = gets.to_i
newpass = Password.new
puts newpass.create(length)