class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end
end

#.release_bike to give Bike.new object
#Bike object to respond to method .working?