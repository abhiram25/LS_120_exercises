# 1. Create a class called MyCar.

# When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us
# the year, color, and model of the car. Create an instance variable
# that is set to 0 during instantiation of the object to track the
# current speed of the car as well.  Create instance methods that allow
# the car to speed up, brake, and shut the car off.

class MyCar
	attr_accessor :color
	attr_reader :year

  def initialize(year, color, model)
	  @year = year
	  @color = color
	  @model = model
	  @speed = 0
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
end

honda = MyCar.new(2004, "Honda", "Accord")


# 2.Add an accessor method to your MyCar class to change and view
# the color of your car. Then add an accessor method that allows you
# to view, but not modify, the year of your car.

puts honda.color

honda.color = "red"

puts honda.year

puts honda.color

honda.spray_paint("orange")

puts honda.color

