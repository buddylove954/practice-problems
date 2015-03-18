class Car
	attr_reader(:sound)
	 IO.write("total.txt", 0)

	def initialize(sound)
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

blue = Car.new( "vroom" )
blue.noise

red = Car.new( "bureung")

pink = Car.new( "broooom")

cars = [blue, red, pink]

cars.each do |car|
	puts car.noise
end

sounds = ["broom", "Meek", "Nyan"]


car_sound = sounds.map do |sound|
	Car.new(sound)
end
now = car_sound

ans = now.reduce("") { |total, car| total + "#{car.sound} " }

puts Car.total

p ans
