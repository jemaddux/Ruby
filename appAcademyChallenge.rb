class Meow
	def pow(base,exponent)
		i = 1
		newbase = base
		if exponent == 1
			return base
		else
			while i < exponent
				newbase = newbase * base
				i+=1
			end
			return newbase
		end
	end
	def sumIt(array1)
		i = 0
		sumdNums = 0
		while i < array1.length
			sumdNums += array1[i]
			i+=1
		end
		return sumdNums
	end
	def is_prime(primeNum)
		i = 2
		remainder = 42
		while i < primeNum
			remainder = primeNum%i
			if remainder == 0
				return false
			end
			i +=1
		end
		return true
	end
	def maxPrime(maxNum)
		q = 2
		totalPrimes = 0
		while q < maxNum
			if $cat.is_prime(q)
				puts q.to_s + " is a prime number."
				totalPrimes +=1
			else
				puts q.to_s + " is NOT a prime number."
			end
			q+=1
		end
		puts""
		puts "There are "+totalPrimes.to_s+" prime numbers under "+maxNum.to_s
	end
end

$cat = Meow.new
/puts "Two numbers please:"
x = gets.chomp.to_i
y = gets.chomp.to_i
puts $cat.pow(x,y)
someArray = [1,2,3,4,5,6,7,8,9,10]
puts $cat.sumIt(someArray)/

puts "Enter a number to find all the primes under it:"
$cat.maxPrime(gets.chomp.to_i)
