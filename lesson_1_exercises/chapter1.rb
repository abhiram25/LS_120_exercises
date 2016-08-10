# How do we create an object in Ruby? Give an example of the creation of an object.


# What is a module? What is its purpose? How do we use them with our classes?
# Create a module for the class you created in exercise 1 and include it properly.

# A module is a set of behaviors used in other classes- via mixins
# We use them if we want other class to use a specific behavior

module Introduce
	def introduce(intro)
		puts "#{intro}"
	end
end

class Name
	include Introduce
end

abhi = Name.new

abhi.introduce("My name is Abhi")
