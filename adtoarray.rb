#An array that accepts new input until x is entered and prints it back out on p

newarray = []
newstring = ""
puts "The array that keeps accepting input until you hit x or prints it out on p.".center(75)
puts ""
until newstring == "x" do
	newstring = gets.chomp
	if newstring == "x" then
		#Nothing
	elsif newstring == "p" then
		puts newarray.join("...")
	else
		newarray.push newstring
	end
end
puts newarray.join("...")




