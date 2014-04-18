require 'docking_station.rb'

describe DockingStation do
	
	let(:station) { DockingStation.new([:bike])}

	it "should have no bikes" do
		expect(DockingStation.new).not_to have_bikes
	end

	it "can be created with bikes" do
		expect(station).to have_bikes
	end

	it "can release a bike" do
		station.release_bike
		expect(station).not_to have_bikes
	end


end