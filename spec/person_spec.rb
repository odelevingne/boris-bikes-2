require "person.rb"

describe "Person" do
	
	it "has no bike when created" do
		person = Person.new
		expect(person).not_to have_bike
	end
		
	
end