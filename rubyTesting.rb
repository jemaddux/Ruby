class Multi
	def run(x,y)
		return x*y
	end
	def find(item,array)
		i = 0
		while i < array.length
			if item == array[i]
				return array[i]
			end
			i+=1
		end
		return nil
	end
	def how_big(num)
		if num<0
			"negative"
		elsif num < 10
			"pretty small"
		elsif num < 100 
			"not too big"
		elsif num < 1000
			"plenty big"
		else
			"way too big"
		end
	end
	def add_to_array(some_array,some_number)
		some_array << some_number
	end
end

sampleArray = ["Barney",42,"Darth Vader",1234,"giggity","Waldo","Martha Stewart","Harry Potter"]

$test = Multi.new
/puts $test.run(4,5)/
/puts $test.find("Waldo",sampleArray)/
puts "Enter a number to hear how big it is:"
puts $test.how_big(gets.to_i)