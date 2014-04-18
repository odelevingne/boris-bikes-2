require "person.rb"

describe "Person" do
	
	it "has no bike when created" do
		person = Person.new
		expect(person).not_to have_bike
	end
		
	it "can have a bike" do 
		person = Person.new(:bike)
		expect(person).to have_bike	
	end

	it "can have an accident" do
		bike = double :bike
		person = Person.new(bike)
		expect(bike).to receive(:break!)
		person.fall_down
	end


end