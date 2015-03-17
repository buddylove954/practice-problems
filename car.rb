class Car
	attr_reader(:brand)

	def initialize(brand)
		@brand = brand
	end

	def noise
		puts "Vroom! the brand is a #{@brand}"
	end
end

blue = Car.new("Toyota")
blue.noise

red = Car.new("Honda")
red.noise