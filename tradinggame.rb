#A simple trading game in a village that could be expanded into a 
#choose your own adventure game.

puts "This is incomplete and I restarted it as newtradinggame.rb so that I could do it a lot better."

class GameControls
	def newGame
		$copper = 10
		$wood = 13
		$coal = 3
		$meat = 4
		$fish = 5
		$wheat = 22
		$rice = 23
		$pasta = 17
		$bread  = 15
		puts ""
		puts "Hi there stranger! Welcome to our Trading Town."
		puts "What is your name?"
		$playerName = gets.chomp
		puts "Well hi there " +$playerName+ "!"
		sleep 2
		puts "Why don't you have a look around!"
		$gamecontroller.whereTo
	end
	
	def whereTo
		puts ""
		puts "Enter the letter(s) of where you want to go:"
		puts "(B)aker, (Bu)tcher, (W)oods, (H)arbor, "
		puts "(M)arket, or (S)ee what you have."
		$playerPrompt = gets.chomp.downcase
		if ($playerPrompt == "s")
			$gamecontroller.playerHas
		elsif ($playerPrompt == "h")
			$gamecontroller.harbor
		elsif ($playerPrompt == "w")
			$gamecontroller.woods
		elsif ($playerPrompt == "bu")
			$gamecontroller.butcher
		elsif ($playerPrompt == "b")
			$gamecontroller.bank
		elsif ($playerPrompt == "esc")
			puts "End of line."
		elsif ($playerPrompt == "m")
			$gamecontroller.market
		elsif ($playerPrompt == "c")
			$gamecontroller.cheat
		else
			puts "Please try again."
			$gamecontroller.whereTo
		end
	end

	def market
		puts ""
		puts "Welcome to the market!"
		puts "You can buy and sell anything here."
		sleep 1
		$leave = "n"
		until ($leave == "y") do 
			puts "What would you like to buy or sell?"
			puts "(W)ood, (C)oal, (M)eat, (F)ish, (Wh)eat,"
			puts "(R)ice, (P)asta, (B)read, or (L)eave?"
			$playerPrompt = gets.chomp.downcase
			puts ""
			if ($playerPrompt == "w")
				puts "Would you like to buy or sell wood?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Wood costs 1 copper each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($copper + 1))
						puts "Thanks. Here is your wood."
						$wood = $wood + howmuch
						$copper = $copper - howmuch
						puts "You now have " +$wood.to_s+ " wood."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Wood sells for 1 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($wood + 1))
						puts "Thanks for the wood."
						$wood = $wood - howmuch
						$copper = $copper + howmuch
						puts "You now have " +$wood.to_s+ " wood."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end	
			if ($playerPrompt == "c")#coal
				puts "Would you like to buy or sell coal?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Coal costs 3 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/3)+1))
						puts "Thanks. Here is your coal."
						$coal = $coal + howmuch
						$copper = copper - (howmuch * 3)
						puts "You now have " +$coal.to_s+ " coal."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Coal sells for 2 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($coal + 1))
						puts "Thanks for the coal."
						$coal = $coal - howmuch
						$copper = $copper + (howmuch * 2)
						puts "You now have " +$coal.to_s+ " coal."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "m")#meat
				puts "Would you like to buy or sell meat?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Meat costs 16 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/16)+1))
						puts "Thanks. Here is your meat."
						$meat = $meat + howmuch
						$copper = copper - (howmuch * 16)
						puts "You now have " +$meat.to_s+ " meat."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Meat sells for 15 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($meat + 1))
						puts "Thanks for the coal."
						$meat = $meat - howmuch
						$copper = $copper + (howmuch * 15)
						puts "You now have " +$meat.to_s+ " meat."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "f")#fish
				puts "Would you like to buy or sell fish?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Fish costs 14 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/14)+1))
						puts "Thanks. Here is your fish."
						$fish = $fish + howmuch
						$copper = copper - (howmuch * 14)
						puts "You now have " +$fish.to_s+ " fish."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Fish sells for 12 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($fish + 1))
						puts "Thanks for all the fish."
						$fish = $fish - howmuch
						$copper = $copper + (howmuch * 12)
						puts "You now have " +$fish.to_s+ " fish."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "wh")#wheat
				puts "Would you like to buy or sell wheat?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Wheat costs 4 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/4)+1))
						puts "Thanks. Here is your wheat."
						$wheat = $wheat + howmuch
						$copper = copper - (howmuch * 4)
						puts "You now have " +$wheat.to_s+ " wheat."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Wheat sells for 3 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($wheat + 1))
						puts "Thanks for the wheat."
						$wheat = $wheat - howmuch
						$copper = $copper + (howmuch * 3)
						puts "You now have " +$wheat.to_s+ " wheat."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "r")#rice
				puts "Would you like to buy or sell rice?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Rice costs 3 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/3)+1))
						puts "Thanks. Here is your rice."
						$rice = $rice + howmuch
						$copper = copper - (howmuch * 3)
						puts "You now have " +$rice.to_s+ " rice."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Rice sells for 3 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($rice + 1))
						puts "Thanks for the rice."
						$rice = $rice - howmuch
						$copper = $copper + (howmuch * 2)
						puts "You now have " +$rice.to_s+ " rice."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "p")#pasta
				puts "Would you like to buy or sell pasta?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Pasta costs 4 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/4)+1))
						puts "Thanks. Here is your pasta."
						$pasta = $pasta + howmuch
						$copper = copper - (howmuch * 4)
						puts "You now have " +$pasta.to_s+ " pasta."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Pasta sells for 3 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($pasta + 1))
						puts "Thanks for the pasta."
						$pasta = $pasta - howmuch
						$copper = $copper + (howmuch * 3)
						puts "You now have " +$fish.to_s+ " fish."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "b")#bread
				puts "Would you like to buy or sell bread?(B/S)"
				response = gets.chomp.downcase
				if (response == "b")
					puts "Bread costs 5 coppers each."
					puts "How much would you like to buy?"
					howmuch = gets.chomp.to_i
					if (howmuch < (($copper/5)+1))
						puts "Thanks. Here is your bread."
						$bread = $bread + howmuch
						$copper = copper - (howmuch * 5)
						puts "You now have " +$bread.to_s+ " bread."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end
				end
				if (response == "s")
					puts "Bread sells for 4 copper each."
					puts "How much would you like to sell?"
					howmuch = gets.chomp.to_i
					if (howmuch < ($bread + 1))
						puts "Thanks for the bread."
						$bread = $bread - howmuch
						$copper = $copper + (howmuch * 4)
						puts "You now have " +$bread.to_s+ " bread."
						puts "You now have " +$copper.to_s+ " coppers."
					else
						puts "You dont have that many coppers."
					end	
				end
			end
			if ($playerPrompt == "l")#leave
				$leave = "y"
			else
				puts ""
				puts "Do you want to leave? (Y/N)"
				$leave = gets.chomp.downcase
			end
		end
		$gamecontroller.whereTo
	end

	def cheat
		puts ""
		puts "You cheater!"
		puts "How much more copper?"
			$copper = $copper +gets.to_i
		puts "How much more wood?"
			$wood = $wood +gets.to_i
		puts "How much more coal?"
			$coal = $coal +gets.to_i
		puts "How much more meat?"
			$meat = $meat + gets.to_i
		puts "How much more fish?"
			$fish = $fish + gets.to_i
		puts "How much more wheat?"
			$wheat = $wheat + gets.to_i
		puts "How much more rice?"
			$rice = $rice + gets.to_i
		puts "How much more pasta?"
			$pasta = $pasta + gets.to_i
		puts "How much more bread?"
			$bread  = $bread + gets.to_i
		$gamecontroller.whereTo
	end

	def baker
		puts ""
		puts "At the baker!"
		$gamecontroller.whereTo
	end

	def butcher
		puts ""
		puts "At the butcher's!"
		$gamecontroller.whereTo
	end

	def woods
		puts ""
		puts "In the woods!"
		$gamecontroller.whereTo
	end

	def harbor
		puts ""
		puts "Do you want to fish? (Y/N)"
		$playerPrompt = gets.chomp.downcase.to_s
		if ($playerPrompt == "y")
			$gamecontroller.fish
		end
		puts "Do you want to buy or sell fish? (Y/N)"
		$playerPrompt = gets.chomp.downcase
		if ($playerPrompt == "y")
			$gamecontroller.buyfish
		end
		$gamecontroller.whereTo
	end

	def fish
		$fishAgain = "y"
		until ($fishAgain == "n") do
			puts ""
			puts "Press a number 1 to 3 to try to catch a fish!"
			$fishnumber = gets.chomp.to_i
			if ((rand(3) + 1) == $fishnumber)
				puts "You have caught a fish!"
				$fish = $fish + 1
				puts "You have " +$fish.to_s+ " fish."
				puts ""
				puts "Fish again? (Y/N)"
				$fishAgain = gets.chomp.downcase
			else
				puts "No fish this time!"
				puts ""
				puts "Fish again? (Y/N)"
				$fishAgain = gets.chomp.downcase
			end
		end
	end

	def buyfish
		puts "You want to buy some fish? (Y/N)"
		$playerPrompt = gets.chomp.downcase
		if ($playerPrompt == "y")
			puts "You have " +$fish.to_s+ " fish."
			puts "They cost ten copper each."
			puts "How many would you like?"
			$howMany = gets.chomp.to_i
			if (($howMany * 10) > $copper)
				puts "You don't have enough money."
			else
				puts "You have bought " +$howMany.to_s+ " fish."
				$fish = $fish + $howMany
				$copper = $copper - (10 * $howMany)
			end	
		end
		puts ""
		puts "You want to sell some fish? (Y/N)"
		$playerPrompt = gets.chomp.downcase
		if ($playerPrompt == "y")
			puts "You have " +$fish.to_s+ " fish."
			puts "I will buy them for 9 coppers each."
			puts "How many would you like to sell me?"
			$howMany = gets.chomp.to_i
			if ($howMany > $fish)
				puts "That is more fish than you have."
			else
				puts "Thanks."
				puts "Here is your "+($howMany * 9).to_s+" coppers."
				$fish = $fish - $howMany
				$copper = $copper + ($howMany * 9)
			end
		end
	end

	def playerHas
		puts ""
		puts $playerName.to_s+ " has:"
		if ($copper > 0)
			puts "Coppers: " +$copper.to_s
		end
		if ($wood > 0)
			puts "Wood: " +$wood.to_s
		end
		if ($coal > 0)
			puts "Coal: " +$coal.to_s
		end
		if ($meat > 0)
			puts "Meat: " +$meat.to_s
		end
		if ($fish > 0)
			puts "Fish: " +$fish.to_s
		end
		if ($wheat > 0)
			puts "Wheat: " +$wheat.to_s
		end
		if ($rice > 0)
			puts "Rice: " +$rice.to_s
		end
		if ($pasta > 0)
			puts "Pasta: " +$pasta.to_s
		end
		if ($bread > 0)
			puts "Bread: " +$bread.to_s
		end
		$gamecontroller.whereTo
	end
end

$gamecontroller = GameControls.new
$gamecontroller.newGame

