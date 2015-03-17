class Person
	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end
end

will = Person.new("will", 25)

puts will.name
puts will.age = 35