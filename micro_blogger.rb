####
#MicroBlogger
#by John Maddux and Paul Blackwell
#Completed 1/31/13
####

require 'jumpstart_auth'
require 'bitly'
require 'klout'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Initializing"
		@client = JumpstartAuth.twitter
		@k = Klout.api_key = 'xu9ztgnacmjx3bu82warbr3h'
	end

	def tweet(message)
		if message.length <= 140
		  @client.update(message)
		else
		  puts "Warning do not post tweet!!!"
		end
	end

	def run
		puts "Welcome to the JSL Twitter Client!!"
		command = ""
		while command != "q"
			printf "enter command: "
			input = gets.chomp 
			parts = input.split(" ")
			command = parts[0]
			case command
				when 'q' then puts "Goodbye!"
				when 't' then tweet(parts[1..-1].join(" "))
				when 'dm' then dm(parts[1].to_s, parts[2..-1].join(" ").to_s)
				when 'spam' then spam_my_followers(parts[1..-1].join(" "))
				when 'elt' then everyones_last_tweet
				when 's' then shorten(parts[1..-1].join(" "))
				when 'turl' then tweet(parts[1..-2].join(" ") + " " + shorten(parts[-1]))
				when 'k' then get_klout
				else
					puts "Sorry, I don't know how to #{command}"
			end
		end
	end

	def dm(target, message)
		screen_names = @client.followers.collect{|follower| follower.screen_name}
		puts "Trying to send #{target} this direct message:"
		puts message
		if screen_names.include?(target)
			differentvar = "d #{target} #{message}"
			tweet(differentvar)
		else
			puts "You can't direct message them dummy."
		end
	end

	def followers_list
		screen_names = []
		@client.followers.each do |follower|
			screen_names << follower["screen_name"]
		end
		puts screen_names
		return screen_names
	end

	def spam_my_followers(message)
		followers = followers_list
		followers.each do |x|
			dm(x, message)
		end

	end

	def everyones_last_tweet
		friends = @client.friends.sort_by { |friend| friend.screen_name.downcase}
		friends.length.times do |x|
			puts "#{friends[x].screen_name} said...."
			puts friends[x].status.text
			timestamp = friends[x].status.created_at
			puts "#{friends[x].name} said this on #{timestamp.strftime("%A, %b %d")}"
			puts ""
		end
	end

	def shorten(original_url)
		Bitly.use_api_version_3
		bitly = Bitly.new('hungryacademy', 'R_430e9f62250186d2612cca76eee2dbc6')
		puts "Shortening this URL: #{original_url}"
		shortURL = bitly.shorten(original_url).short_url
		puts shortURL
		return shortURL
	end

	def get_klout
		friends = @client.friends.collect{|f| f.screen_name}
		friends.each do |f|
			puts f
			begin
				identity = Klout::Identity.find_by_screen_name(f)
				user = Klout::User.new(identity.id)
				puts "Has a Klout score of: #{user.score.score}"
			rescue
        puts "....doesn't have a Klout score."
			end
			puts ""
			sleep 1
		end
	end
end

blogger = MicroBlogger.new
blogger.run