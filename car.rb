class Car
	attr_reader(:brand, :sound)

	def initialize(brand, sound)
		@brand = brand
		@sound = sound
	end

	def noise
		puts "#{@sound}"
	end
end

blue = Car.new("Toyota", "vroom" )
blue.noise

red = Car.new("Honda", "bureung")
red.noise