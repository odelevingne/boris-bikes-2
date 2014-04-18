require "person.rb"

describe "Person" do

	let(:person) {Person.new}
	let(:person_with_bike) {Person.new(:bike)}
	
	it "has no bike when created" do
		expect(person).not_to have_bike
	end
		
	it "can have a bike" do 
		expect(person_with_bike).to have_bike	
	end

	it "can have an accident" do
		bike = double :bike
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.fall_down
	end

	it "can rent a bike from a docking station" do
		station = double :station
		expect(station).to receive(:release_bike)
		person.rent_bike_from(station)
	end

	it "has a bike after renting one from a docking station" do
		station = double :station, release_bike: :bike
		expect(person.rent_bike_from(station)).to have_bike
	end

	it "can return a bike after renting one from docking station" do
		station = double :station
		expect(station).to receive(:dock).with(:bike)
		person_with_bike.return_bike_to(station)
	end

	it "will have no bike after returning one" do
		station = double :station, dock: nil
		person_with_bike.return_bike_to(station)
		expect(person_with_bike).not_to have_bike
	end

end