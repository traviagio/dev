require_relative '../lib/garage'


describe Garage do

	let(:bike) { Bike.new }
	let(:garage) {Garage.new}
	

# it "should accept a bike" do        
#     # we expect the holder to have 0 bikes
#     expect(garage.bike_count).to eq(0)
#     # let's dock a bike into the holder
#     garage.dock(bike)    
#     # now we expect the holder to have 1 bike
#     expect(garage.bike_count).to eq(1)
  # end

 #  it "should release a bike" do
	# garage.dock(bike)
	# garage.release(bike)
	# expect(garage.bike_count).to eq(0)
 #  end

	it 'should fix a broken bike' do
		bike = Bike.new
		bike.break
		garage.dock(bike)
		expect(garage.release(bike)).to_not be_broken
	end


end


