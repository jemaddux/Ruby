puts "Enter a range: "
range = gets.to_i
puts "How many times?"
times = gets.to_i
i = 0
until (i == times) do
   puts "Random number is: " + rand(range).to_s
   puts "i is: " + i.to_s
   i += 1
end