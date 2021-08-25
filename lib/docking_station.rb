require_relative "bike"

class DockingStation
  def release_bike
    Bike.new
  end
end 

#.release_bike to give Bike.new object
#Bike object to respond to method .working?