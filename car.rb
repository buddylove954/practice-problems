class Car
	attr_reader(:brand, :sound)
	 IO.write("total.txt", 0)

	def initialize(brand, sound)
		@brand = brand
		@sound = sound

		current = IO.read("total.txt").to_i
	    IO.write("total.txt", current + 1)
	end

	def self.total
		return IO.read("total.txt").to_i
	end

	def noise
		puts "#{@sound}"
	end
end

blue = Car.new("Toyota", "vroom" )
blue.noise

red = Car.new("Honda", "bureung")

puts Car.total
