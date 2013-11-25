require_relative '../lib/docking_station'

describe DockingStation do

	it 'should dock bikes that are unbroken' do
		bike = Bike.new
		station = DockingStation.new
		expect(station.bikecount).to eq(0)
		station.dock(bike)
		expect(station.bikecount).to eq(1)
	end
end
