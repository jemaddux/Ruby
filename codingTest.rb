class Coding
	def silly_sums(numbers)
		i = 0
		sumOfNums = 0
		while i < numbers.count
			sumOfNums += i*numbers[i]
			i += 1
		end
		return sumOfNums
	end
	def num_squares(max)
		numberBeingTested = 1
		numberOfSquares = 0
		while numberBeingTested < max
			q = 1		
			while q <= numberBeingTested
				if q*q == numberBeingTested
					numberOfSquares += 1
				end
				q +=1
			end
			numberBeingTested +=1
		end
		return numberOfSquares
	end
	def silly_nums(max2)
		r = 1
		returnedArray = []
		while r < max2
			if r%3==0
				if r%5==0
					/do nothing/
				else
					returnedArray << r
				end
			end
			if r%5==0
				if r%3==0
					/do nothing/
				else
					returnedArray << r
				end
			end
			r+=1
		end
		return returnedArray
	end
end

array = [1,2,3,4,5,6,7]
$test = Coding.new
puts $test.silly_sums(array)
puts"*********"
puts""

puts "Insert max number to test for perfect squares:"
puts $test.num_squares(gets.chomp.to_i)
puts "**********"
puts""

puts "Insert max number 2 for the silly_nums test:"
print $test.silly_nums(gets.chomp.to_i)