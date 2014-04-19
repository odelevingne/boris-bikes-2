class DockingStation

	BROKEN_BIKE_SELECTOR = ->(bike){ bike.broken?} 

	def initialize(bikes = [])
		@bikes = bikes
	end

	def has_bikes?
		@bikes.any? #@bike is not nil? return true or false. If if is not nil, then it has a bike and returns true.
	end

	def available_bikes
		@bikes.reject(&BROKEN_BIKE_SELECTOR)
	end
 
	def broken_bikes
		@bikes.select(&BROKEN_BIKE_SELECTOR)
	end

	def release_bike
		release(available_bikes.pop)
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def dock(bike)
		@bikes << bike
		nil
	end

	def release_broken_bikes
		broken_bikes.map{|bike| release(bike) }
	end

end