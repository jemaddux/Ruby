puts "How many times should I run the program?"
howManyTimes = gets.to_i
class Questions
def new
end
def run
	puts "Which type of interest? Enter:"
	puts "1 for Simple,"
	puts "2 for Compound, or"
	puts "3 for Continuous."
   	puts ""
	type = gets.to_i
	puts "What is the interest rate?"
	rate = gets.to_f
	puts "How many iterations in the time period?"
	ints = gets.to_f
	puts "What is the principle?"
	prince = gets.to_f
	prince2 = prince
	prince3 = prince
	puts ""
myinterest = Interest.new
myinterest.run( type, rate, ints, prince, prince2, prince3 )
end
end


class Interest
def new
end
def run( atype, arate, aints, aprince, aprince2, aprince3)
type = atype
rate = arate
ints = aints
prince = aprince
prince2 = aprince2
prince3 = aprince3
	if (type == 2) then
	puts "Compound Interest:"
	i = 0
		until i == ints do 
		prince = prince * (1 + (rate/100))
		puts "Period " + (i + 1).to_s + " total: $" + prince.to_s
		i = i + 1
		end
	puts ""
	end

	if (type == 1) then
	puts "Simple Interest: "
	q = 0
	total = prince2
		until q == ints do
		total = total + (prince2 * (rate/100))
		puts "Period " + (q + 1).to_s + " total: $" + total.to_s
		q = q + 1
		end
	puts ""
	end

	if (type == 3) then 
	e = Math::E
	r = 0 
	puts "Continuously Compounding Interest: "
		until r == ints do
		puts "Period " + (r + 1).to_s + " total: $" + (prince3 * (e**((rate/100)*(r+1)))).to_s
		r = r + 1
		end
	end
end
end

myquestions = Questions.new
x = 0
until ( x==howManyTimes ) do
myquestions.run
x = x + 1
end