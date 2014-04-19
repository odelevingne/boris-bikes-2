class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		!@bike.nil? #@bike is not nil? return true or false. If if is not nil, then it has a bike and returns true.
	end

	def fall_down
		@bike.break!
	end

	def rent_bike_from(station)
		@bike = station.release_bike
		self
	end

	def return_bike_to(station)
		@bike = station.dock(@bike)
	end

end