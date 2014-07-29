class Point
	attr_accessor :x , :y

	def initialize(x, y, transport)
		@x = x
		@y = y
		@transport = transport
		@array_positions = [@x,@y]
		@type_of_transport = {
			'bike' => 1,
			'motorbyke' => 0.2,
			'car' => 0.3,
			'van' => 0.4
		}
	end

	def point_coord
		@array_positions 
	end

	def calculate_distance
		from = @array_positions[0]
		to = @array_positions[1]
		x1 = from [0]
		y1 = from[1]
		x2 = to [0]
		y2 = to [1]
		distance = Math.sqrt( ( (x1 - x2).abs )**2 + ( (y1 - y2).abs )**2 )
		return distance.round
	end

	def transport_type
		if @type_of_transport[:transport] == @transport

		end
end