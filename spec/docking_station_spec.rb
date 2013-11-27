require_relative '../lib/docking_station'

describe DockingStation do

	
	let(:station) { DockingStation.new(:capacity => 123) }
	let(:bike) {Bike.new}
    
    it "should allow setting default capacity on initializing" do
    	expect(station.capacity).to eq(123)
    end

    it 'should know when station is empty' do
        station.dock(bike)
        station.release(bike)
        expect(station.empty?).to be_true
    end

     it 'should know when station isnt empty' do
        station.dock(bike)
        expect(station.empty?).to be_false
     end

end
