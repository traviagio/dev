require_relative '../lib/docking_station'

describe DockingStation do

	let(:bike)  { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	def fill_station(station)
		20.times {station.dock(Bike.new)}
	end

	it 'should dock bikes that are unbroken' do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end


	it "should allow bikes to be released" do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		station.release(bike)
	end

	it "should know when the station is full" do
        expect(station).not_to be_full
        fill_station station
        expect(station).to be_full
	end	

	it "should not accept bikes if the station is full" do
		fill_station station
		expect(lambda {station.dock(bike)} ).to raise_error(RuntimeError)
	end

	it "should provide the list of available bikes" do
	  working_bike, broken_bike = Bike.new, Bike.new    
	  broken_bike.break
	  station.dock(working_bike)
	  station.dock(broken_bike)
	  expect(station.available_bikes).to eq([working_bike])
	end

end
