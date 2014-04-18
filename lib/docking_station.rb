class DockingStation

	def initialize(bikes = [])
		@bikes = bikes
	end

	def has_bikes?
		@bikes.any? #@bike is not nil? return true or false. If if is not nil, then it has a bike and returns true.
	end

	def release_bike
		@bikes.pop
	end

end