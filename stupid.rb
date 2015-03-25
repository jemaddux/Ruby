class StupidThing
	def method1(var1, var2, var3) 
		var4 = var1 + var2 + var3
		puts var4
	end
end	

$app = StupidThing.new
$app.method1(1,2,3)
