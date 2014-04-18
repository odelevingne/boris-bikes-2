require "bikes.rb"

describe "Bikes" do 

	let(:bike) 		  {Bike.new		  }
	let(:broken_bike) {Bike.new.break!}

	it "should not be broken when created" do 
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		expect(broken_bike).to be_broken
	end

	it "should be able to fix if broken" do
		broken_bike.fix!
		expect(bike).not_to be_broken
	end
end