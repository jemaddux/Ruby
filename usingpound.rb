n = 3
puts "I can do #{n} things at a time."
puts 'I can\'t do #{n} things at a time.'

class PersonalChef
   def makeToast(color)
	puts "Making your toast #{color}."
   end
end
toast = "brown"

frank = PersonalChef.new
frank.makeToast(toast)