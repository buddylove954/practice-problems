class Car
	def initialize(engine)
		@engine = engine
	end

	def rev
		puts "click"
		puts @engine.rev
	end
end

class Engine

	def initialize(noise)
		@noise = noise
	end

	def rev
		puts @noise
	end
end



silver_engine = Engine.new("Vroom!")
blue_car = Car.new(silver_engine)
blue_car.rev

