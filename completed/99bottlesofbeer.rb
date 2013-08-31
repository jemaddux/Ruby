wide = 75
puts "The Lyrics of 99 Bottles of Beer on the Wall.".center(wide)
puts "".center(wide)
sleep 2
bottles = 99
while bottles != -1
	puts (bottles.to_s + " bottles of beer on the wall!").center(wide)
	sleep 1
	puts (bottles.to_s + " bottles of beer!.").center(wide)
	sleep 1
	bottles = bottles - 1
	puts "Take one down. Pass it around.".center(wide)
	sleep 1
	puts (bottles.to_s + " bottles of beer on the wall!").center(wide)
	puts ""
	sleep 2
end