require 'van.rb'

describe Van do
	
	it "has no bikes" do
		expect(Van.new).not_to have_bikes
	end

	it "picks up broken bikes from a place" do
		place = double :place
		van = Van.new
		expect(place).to receive(:release_broken_bikes)

		van.pickup_broken_bikes_from(place)
	end

	it "has broken bikes after picking them up" do
		place = double :place, release_broken_bikes: [:bike]
		van = Van.new
		van.pickup_broken_bikes_from(place)
		expect(van).to have_bikes
	end



end