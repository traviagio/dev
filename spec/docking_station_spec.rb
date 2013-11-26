require_relative '../lib/docking_station'

describe DockingStation do

	let(:bike)  { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

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
        20.times {station.dock(Bike.new)}
        expect(station).to be_full

	end	

end
