class DockingStation

	def initialize
		@bikes = []
	end


	def bikecount
		@bikes.count
	end

	def dock(bike)
	@bikes << bike
	end

end	
