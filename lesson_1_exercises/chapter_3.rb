# Add a class method to your MyCar class that
# calculates the gas mileage of any car.


class MyCar
	attr_accessor :color, :model
	attr_reader :year

  def initialize(year, color, model)
	  @year = year
	  @color = color
	  @model = model
	  @speed = 0
  end

  def self.gas_mileage(miles, gallons)
  	puts "The mpg is #{miles/gallons}"
  end

	def current_speed
		@speed
	end

	def speed_up(number)
		@speed += number
	end

	def spray_paint(color)
		puts "Spraying the #{@color} car #{color}"
		@color = color
	end

	def break(number)
		@speed -= number
	end

	def shut_down
		@speed = 0
	end

	def to_s
	  "My car is #{color}, #{year} #{model}"
	end
end

honda = MyCar.new(2004, "grey", "Accord")

puts honda

MyCar.gas_mileage(351, 13)

# When running the following code...


class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

puts bob.name
