weekdays  = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
weekdays.each {|day| puts day.capitalize!}
weekdays.each_with_index do |day, index|
  puts "#{index + 1} #{day}"
end
puts weekdays[0..4]

print "One "
print "single "
print "line "