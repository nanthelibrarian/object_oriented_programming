

class Rover
	attr_reader :x, :y, :direction

	def initialize(coordinates)
		input = coordinates.split
		@x = input[0].to_i
		@y = input[1].to_i
		@direction = input[2]
	end

	def move
		if @direction == "N"
			@y += 1 
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		elsif direction == "W"
			@x -= 1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction ==  "N"
			@direction = "E"
		elsif @direction == "W"
			@direction = "N"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "E"
			@direction = "S"
		end
	end

	def to_s
		"<Rover: #{x}, #{y}, facing #{direction}>"
	end

	def read_instruction(input)
		inputs = input.chars
		inputs.each do |bananas|  
			case bananas 
			when "M"
				move
			when "L"
				turn_left
			when "R"
				turn_right
			end
		end	
	end
end

rover1 = Rover.new("1 2 N")
rover1.read_instruction("LMLMLMLMM")
puts rover1

rover2 = Rover.new("3 3 E")
rover2.read_instruction("MMRMMRMRRM")
puts rover2
