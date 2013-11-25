require_relative '../lib/bike'

describe Bike do
	it 'should assign new bikes as not broken' do
      bike = Bike.new
      expect(bike).not_to be_broken
    end
    
    it 'should allow bikes to be broken' do
    	bike = Bike.new
    	bike.break
        expect(bike).to be_broken
	end
end

