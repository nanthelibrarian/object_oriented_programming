class Person
	attr_accessor :name 
	def initialize(name)
		@name = name 
	end
	def greeting
		puts "Hi, my name is #{name}"
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

instructor = Instructor.new("Chris")
puts instructor.greeting

student = Student.new("Cristina")
puts student.greeting 

instructor.teach

student.learn 

student.teach # this doesn't work because the teach method belongs to the instructor (instance method)

