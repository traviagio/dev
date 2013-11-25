require_relative '../lib/bike'

describe Bike do

	let(:bike) {Bike.new}

	it 'should assign new bikes as not broken' do
      expect(bike).not_to be_broken
    end
    
    it 'should allow bikes to be broken' do
    	bike.break
        expect(bike).to be_broken
	end

	it 'should allow bikes to be repaired' do
		bike.break
		bike.fix
		expect(bike).not_to be_broken
	end

end

