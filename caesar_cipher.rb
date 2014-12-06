puts "Caesar Cipher"
puts "Use Command-c to quit."

puts "enter cipher:"
cipher = gets.chomp.downcase
puts "0: " + cipher
cipher_key = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
(1..26).each do |shift|
  result = cipher.split("").map do |c| 
    if cipher_key.index(c) == nil
      " "
    else
      cipher_key[(cipher_key.index(c) + shift) % 26]
    end
  end
  puts shift.to_s + ": " + result.join("")
end
