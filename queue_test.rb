
keys = {id: 0, name: 1, age: 2, sex: 3}
array_by_array = [
[0, "john", 28, "m"],
[1, "john", 27, "m"],
[2, "evelyn", 28, "f"],
[3, "heather", 25, "f"]
]

array_by_array.each do |x|
	if x[keys[:age]] == 28
		puts x.to_s
		#puts keys[:age].to_s
	end
end

##queue count
puts "Queue count: #{array_by_array.count}"