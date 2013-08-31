# The 3rd version of the trading game which is becoming a
# Choose Your Own Adventure Game.
# Updates to this version:
	# 1. The removal of the whereto method and its replacement
	# with simply using the place method to move around. In
	# any place you will have a number of options of where
	# to go from there.
	# 2. The game will save your place where you are and load
	# it back each time.
	# 3. You will be able to save up to 5 different games that
	# will be named and choosable from the load screen.  **Done
	# 4. You will be able to exit from anywhere with "esc" but 
	# the game will first ask you if you want to load a new
	# game.

require 'yaml'
$filename = ["TGSv3GameNames.txt","TGSv3Save1.txt","TGSv3Save2.txt","TGSv3Save3.txt","TGSv3Save4.txt","TGSv3Save5.txt"]


class Game
   def intiate
	
		puts "Starting a new game...."
		puts ""
		$wood = [0,"wood",2,2] #(quantity,name of object,buy price,sell price)
		$copper = 20 
		$meat = [0,"meat",7,5]
		$fish = [0,"fish",4,3]
		$wheat = [0,"wheat",2,2]
		$bread = [0,"bread",6,5]
	
	
	#Intial place settings.
	$market = 
		["market",
		"Welcome to the market. Here you can buy and sell wood, meat, fish, wheat and bread.",
		"At the market: We trade in wood, meat, fish, wheat and bread. Would you like to sell or buy (S/B)",
		"Would you like to trade (w)ood, (m)eat, (f)ish, (wh)eat or (b)read?",
		$wood, "w",
		$meat, "m",
		$fish, "f", 
		$wheat, "wh",
		$bread, "b",	
		2
		]
	$harbor = 
		["harbor",
		"Welcome to the harbor. Here you can buy and sell fish and wheat.",
		"At the harbor: We trade in fish and wheat. Would you like to buy or sell? (B/S)",
		"Would you like to trade (f)ish or (wh)eat?",
		$fish, "f",
		$wheat, "wh",
		-1
		]
	$game.whereto
   end

   def whereto
	puts "Where would you like to go? The (h)arbor or the (m)arket?"
	y = gets.chomp.to_s.downcase
		if (y == "h")
			puts ""
			$game.place($harbor)
		elsif (y == "m")
			puts ""
			$game.place($market)
		elsif (y == "esc")
			$game.over
		elsif (y == "cheat")
			puts "You cheater."
			puts "What would you like to change?"
			puts "(w)ood, (m)eat, (c)opper, (f)ish, (wh)eat or (b)read?"
			y = gets.chomp.downcase
			if (y == "c")
				puts "You have #{$copper} coppers."
				puts "How many coppers do you want?"
				$copper = gets.chomp.to_i
				$game.whereto
			elsif (y == "w")
				$game.cheat($wood)
				$game.whereto
			elsif (y == "m")
				$game.cheat($meat)
				$game.whereto
			elsif (y == "f")
				$game.cheat($fish)
				$game.whereto
			elsif (y == "wh")
				$game.cheat($wheat)
				$game.whereto
			elsif (y == "b")
				$game.cheat($bread)
				$game.whereto
			end
		else 
			$game.whereto
		end
   end

   def place (placearray)     puts placearray[1]     puts placearray[2]
buyorsell = gets.chomp.downcase     if (buyorsell == "b")        puts
placearray[3]        what = gets.chomp.downcase
placearray.length.times do |x|            if (what == placearray[x])
$game.buy(placearray[x-1],(placearray[placearray.length.-1]))            end
end     elsif (buyorsell == "s")        puts placearray[3]        what =
gets.chomp.downcase         placearray.length.times do |x|            if (what
== placearray[x])
$game.sell(placearray[x-1],(placearray[placearray.length.-1]))            end
end       else        puts "That isn't a valid input."     end     puts ""
$game.whereto    end

   def cheat(temparray)
	puts "You have #{temparray[0]} #{temparray[1]}."
	puts "How many would you like to add (or subtract)?"
	temparray[0] = temparray[0] + gets.chomp.to_i
	puts "You now have #{temparray[0]} #{temparray[1]}."
	puts ""
	puts "Please change the buy price."
	temparray[2] = gets.chomp.to_i
	puts "#{temparray[1]} now costs #{temparray[2]}."
	puts ""
	puts "Please change the sell price."
	temparray[3] = gets.chomp.to_i
	puts "#{temparray[1]} now sells for #{temparray[3]}."
	puts ""
	return temparray
   end

   def buy (temparray,margin) #allows you to buy any array item (3+ variables)
	howmany = temparray[0]
	what = temparray[1]
	buyprice = temparray[2]
	totalprice = buyprice + margin
	puts "You have #{$copper} coppers and #{howmany} #{what}."
	puts "#{what.capitalize} is #{totalprice} coppers a unit."
	puts "How many would you like to buy?"
	many = gets.chomp.to_i
	if (($copper/totalprice) >= many)
	   puts "You have bought #{many} #{what} and now have #{(howmany + many)} #{what} total."
	   $copper = $copper - (many*totalprice)
	   puts "You have #{$copper} coppers left."
	   temparray[0] = (howmany + many)
	   puts ""
	   return temparray
	elsif (($copper/(buyprice+margin)) < many)
	   puts "You dont have enough money for that."
	   puts ""
	   return temparray
	end
   end

   def sell (temparray,margin) #allows you to sell any array item (3+ variables)
	howmany = temparray[0]
	what = temparray[1]
	sellprice = temparray[3]
	totalprice = sellprice + margin
	puts "You have #{$copper} coppers and #{howmany} #{what}."
	puts "#{what.capitalize} sells for #{totalprice} coppers a unit."
	puts "How many would you like to sell?"
	many = gets.chomp.to_i
	if (many <= howmany)
	   puts "You have sold #{many} #{what} and now have #{(howmany - many)} #{what} total."
	   $copper = $copper + (many * totalprice)
	   puts "You have #{$copper} coppers."
	   temparray[0] = (howmany - many)
	   puts ""
	   return temparray
	elsif (howmany > many)
	   puts "You dont have enough #{what} to sell that many."
	   puts ""
	   return temparray
	end
   end

   def over
		$game.savegame
		
		puts "Game Over!"
   end
    
	def savegame
		$savefile = [$copper,0].to_a + $wood + $meat + $fish + $wheat + $bread
		File.open $filename[1], 'w' do |f|
			f.write($savefile.to_yaml)
		end
	end

	def loadgame 
		$wood = [0,0,0]
		$meat = [0,0,0]
		$fish = [0,0,0]
		$wheat = [0,0,0]
		$bread = [0,0,0]
		tempfile = File.read($filename[0])
		temparray = YAML::load tempfile
		$copper = temparray[0]
		x = temparray[1]
		$wood[0] = temparray[2]
		$wood[1] = temparray[3]
		$wood[2] = temparray[4]
		$wood[3] = temparray[5]
		$meat[0] = temparray[6]
		$meat[1] = temparray[7]
		$meat[2] = temparray[8]
		$meat[3] = temparray[9]
		$fish[0] = temparray[10]
		$fish[1] = temparray[11]
		$fish[2] = temparray[12]
		$fish[3] = temparray[13]
		$wheat[0] = temparray[14]
		$wheat[1] = temparray[15]
		$wheat[2] = temparray[16]
		$wheat[3] = temparray[17]
		$bread[0] = temparray[18]
		$bread[1] = temparray[19]
		$bread[2] = temparray[20]
		$bread[3] = temparray[21]
	end
   
   def start
		x = File.read($filename[0])
		y = YAML::load x
		gamenamesarray = eval(y)
		puts "Welcome to Trading town. Please load your game. Or"
		puts "select an empty game to start a new game."
		puts ""
		z = 0
		5.times do 
			puts "Game #{z+1}: #{gamenamesarray[z]}"
			z = z +1
		end
		puts "Select 1-5"
		$gamenumber = 0
		until ($gamenumber <= 5 && $gamenumber >= 1) do
			$gamenumber = gets.chomp.to_i
			if ($gamenumber > 5 || $gamenumber < 1)
				puts "Please enter a number 1 through 5."
			end
		end
		if (gamenamesarray[$gamenumber-1] != "empty")
			$game.loadgame
		elsif (gamenamesarray[$gamenumber-1] == "empty")
			puts "What would you like to name your game?"
			r = gets.chomp.to_s
			gamenamesarray[$gamenumber-1] = r
			File.open $filename[0], 'w' do |f|
				f.write(gamenamesarray.to_s.to_yaml)
			end
		end
		
   end
end

$game = Game.new
$game.start

