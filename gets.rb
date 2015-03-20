require 'awesome_print'
class Auth
	def initialize(username, password)
		@password = password
		@username = username
	end


	def valid?(user, pass)
		return pass == @password && user == @username
	end
end



puts "what username would you like to use?"
username = gets.chomp
puts "what password would you like to use?"
password = gets.chomp
users = Auth.new(username, password)

ap "What's your username?"
username = gets.chomp
ap "What's your password?"
password = gets.chomp

if !users.valid?(username, password)
	puts "you're an idiot"
else
	puts "good job"
	ap "now give me some words:"
	words = gets.chomp
	puts ""
	ap "your word count is: #{words.split(" ").length}"
	ap "And the words you used: #{words}"
end
