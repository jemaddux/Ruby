wide = 75
puts "The Leap Year Calculator.".center(wide)
puts""
sleep 1
puts "Starting year?".center(wide)
yrstart = gets.to_i
puts "Ending year?".center(wide)
yrend = gets.to_i
puts ""
sleep 1
leapyears = ""

if yrstart <= yrend then
	until yrstart == (yrend + 1) do
		if ((yrstart % 400) == 0) then
			puts (yrstart.to_s + " LEAP YEAR!!").center(wide)
			leapyears = leapyears + yrstart.to_s + "..."
		elsif ((yrstart % 100) == 0) then
			puts (yrstart.to_s + "............").center(wide)
		elsif ((yrstart % 4) == 0) then
			puts (yrstart.to_s + " LEAP YEAR!!").center(wide)
			leapyears = leapyears + yrstart.to_s + "..."
		else
			puts (yrstart.to_s + "............").center(wide)
		end
		yrstart = yrstart + 1			
	end
	puts ""
	puts "The Leap Years:".center(wide)
	puts ""
	puts leapyears
else
	puts "The start year needs to be before the end year.".center(wide)
	sleep 1
	puts "Dumbass".center(wide)
end