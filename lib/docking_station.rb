# load BikeContainer
require_relative './bike_container'

class DockingStation

  # this gives us all the methods that used to be in this class
  include BikeContainer

  def initialize(options = {})    
    # self.capacity is calling the capacity=() method 
    # (note the equals sign) defined in BikeContainer
    # capacity (the second argument to fetch()) is calling 
    # the capacity() method in BikeContainer
    self.capacity = options.fetch(:capacity, capacity)
  end

end



# class DockingStation

# 	DEFAULT_CAPACITY = 10

# 	def initialize(options = {})
# 		# @capacity options.fetch(:capacity) || DEFAULT_CAPACITY
# 		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
# 		@bikes = []
# 	end


# 	def bike_count
# 		@bikes.count
# 	end

# 	def dock(bike)
# 	#if the capacity is reached, raise an exception
# 	raise "Station is full" if full?
# 	@bikes << bike
# 	end

# 	def release(bike)
# 	@bikes.delete(bike)
# 	end

# 	def full?
# 	bike_count == @capacity
#     end

#     def available_bikes
#     	@bikes.reject {|bike| bike.broken?}
#     end

# end	