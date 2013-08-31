class PrimeNumber
	def intiate
		/$keepGoing = true
		$count = 0
		$numberOfPrimes = 0
		while ($numberOfPrimes < $howManyPrimes)
			if ($count.integer == true)
				$numberOfPrimes++
				puts $count

			end
			$count++
		end	/
		puts 1


/puts "How many prime numbers?"
$howManyPrimes = gets.chomp.to_i

$primeNumber = PrimeNumber.new
$primeNumber.intiate/
