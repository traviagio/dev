class Garage #< BikeContainer
    
include BikeContainer

  # def dock(bike)
  #   raise "There is no more room for bikes" if full?
  #   bikes << bike
  # end

  # def release(bike)
  #   raise "Bike does not exsist" if !bikes.include?(bike) 
  #   bikes.delete(bike)
  # end

  # def fix
  # 	true # broken_bikes = available_bikes
  # end

  def dock(bike)
      bike.fix
      super(bike)
  end

end