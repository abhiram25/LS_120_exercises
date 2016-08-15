class Student
	def initialize(name, grade)
		@name = name
		@grade = grade
	end

	def better_grade_than?(other_student)
		get_grade > other_student.get_grade
	end

	protected

	def get_grade
		@grade
	end
end

joe = Student.new("Joe", 96)

bob = Student.new("Bob", 84)

puts "Well done!" if joe.better_grade_than?(bob)
