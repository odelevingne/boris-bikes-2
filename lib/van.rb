class Van

def has_bikes?
	@bikes
end

def pickup_broken_bikes_from(place)
	place.release_broken_bikes
end

end