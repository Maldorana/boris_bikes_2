class DockingStation
  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail "Docking station full" if @bike
    @bike = bike
  end

end 

#.release_bike to give Bike.new object
#Bike object to respond to method .working?