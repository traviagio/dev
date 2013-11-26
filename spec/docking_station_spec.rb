require_relative '../lib/docking_station'

describe DockingStation do

	# let(:bike) = { Bike.new }
	# let(:station) = { DockingStation.new }

	it 'should dock bikes that are unbroken' do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bikecount).to eq(0)
		station.dock(bike)
		expect(station.bikecount).to eq(1)
	end


	it "should allow bikes to be released" do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bikecount).to eq(0)
		station.dock(bike)
		station.release(bike)
	end

end
