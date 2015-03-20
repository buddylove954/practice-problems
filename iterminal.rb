# require 'pry'
# binding.pry
text = IO.readlines("term.txt")

require 'highline'


class Poster
	attr_reader :arr
	@arr = []
	def initialize
		@arr = []
	end

	def format(array)
			array.each do |ele|
			if !(ele.include?("-"))
			puts post(ele)
			end
		end

end

class Screen
	def initialize
		@size = HighLine::SystemExtensions.terminal_size
	end
	
	def post(input)
		num = (size[0] - input.length ) / 2
		" "* num + "#{input}" 
	end

end



now = Poster.new
now.format(text)

