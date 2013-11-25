

class Bike

	def initialize
	@broken = false

	end

  	def break
  	@broken = true
 	end

 	def fix
 		@broken = false
 	end

  	def broken?
  	@broken 
  	end

  
end



# bike = Bike.new("working") 