require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :bikes
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    good_bikes = @bikes.select { |bike| bike.broken == false }
    fail "No bikes available" if good_bikes.empty?
    @bikes.pop
  end


  def dock(bike)
    p @bikes
    fail "Docking station full" if full?
    #if bike.broken?
    #  @bikes
    #else
    @bikes << bike
    #end
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end
end

#.release_bike to give Bike.new object
#Bike object to respond to method .working?