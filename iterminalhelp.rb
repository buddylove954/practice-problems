require 'highline'



size = HighLine::SystemExtensions.terminal_size
p size

message = "Are you ready for the iTerminal???"
message_2 = "type 'next' to advance and 'previous' to go back"
num_1 = (81 - message.length ) / 2
num_2 = (81 - message_2.length ) / 2


	i = 0
while i < 20
	puts "\n"
	i += 1
end

puts " "* num_1 + "#{message}" + " "* num_1

	i = 0
while i < 20
	puts "\n"
	i += 1
end
name = gets.chomp
	i = 0
while i < 20
	puts "\n"
	i += 1
end

puts " "* num_2 + "#{message_2}" + " " * num_2

	i = 0
while i < 20
	puts "\n"
	i += 1
end
m = -1

slide_arr = IO.readlines("term.txt")

while name != "exit"
	name = gets.chomp
	if name.downcase == "next"
		slide = slide_arr[m += 1]

	elsif name.downcase == "previous"
		slide = slide_arr[m -= 1]
	end

	i = 0
while i < 20
	puts "\n"
	i += 1
end

num = (81 - slide.length ) / 2
puts " "*num + "#{slide}" + " "*num

	n = 0
while n < 20
	puts "\n"
	n += 1
end

end

