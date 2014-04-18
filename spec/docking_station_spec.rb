require 'docking_station.rb'

describe DockingStation do
	
	let(:bike)    {   double :bike, broken?: false  }
	let(:station) {   DockingStation.new([bike])   }

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

	it "cannot release a broken bike" do
		broken_bike = double :bike, broken?: true
		station = DockingStation.new([broken_bike])
		station.release_bike
		expect(station).to have_bikes
	end

	it "has available bikes" do
		expect(station.available_bikes).to eq [bike]
	end

	it "can dock a bike" do
		station = DockingStation.new 
		station.dock(:bike)
		expect(station).to have_bikes
	end

	it "lets us know that we returned a bike and we don't have one" do
		station = DockingStation.new 
		expect(station.dock(:bike)).to be_nil
	end
end