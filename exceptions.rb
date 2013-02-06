data = [0,1,2,3,4].shuffle

data.each do |d|
  begin
    puts "5 divided by #{d} is #{5/d}"
  rescue
    puts "EVERYTHING BLEW UP!!!!" #Leave blank to address the problem silently.
  end
end


# begin
# 	data.each do |d|
#     puts "5 divided by #{d} is #{5/d}"
#   end   
# rescue
#   puts "EVERYTHING BLEW UP!!!!"
# end