class Password
   def create(long)
	z1 = ('a'..'z').to_a
	z2 = ('A'..'Z').to_a
	z3 = (0..9).to_a
	#z4 = ["!","@","#","$","%","^","&","*","(",")"]
	zPrime = (z2 + z1 + z3).shuffle.shuffle
	password = ""
	q = 0
	long.times do
		puts zPrime[q].to_s
		password = password + (zPrime[q]).to_s
		q = q +1
	end
	return password
   end
end

class CreatePassword < Password
end

rot = CreatePassword.new
puts rot.create(10)