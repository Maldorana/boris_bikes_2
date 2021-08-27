require "docking_station"

describe DockingStation do
  it "has a default capacity" do
    expect(subject.capacity).to eq(described_class::DEFAULT_CAPACITY)
  end

  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it "release a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it "doesn't release a bike because it doesn't exist" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it "you can't release a broken bike" do
      bike = Bike.new
      broken_bike = bike.report_broken
      expect(subject.bikes).not_to include(broken_bike)
    end
  end 

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it "docks bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq([bike]) 
    end
    it "raises an error when full" do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
    end
  end

  it "returns docked bikes" do
    bike = Bike.new
    bikes = []
    bikes << subject.dock(bike)
    expect(subject.dock(bike)).to eq(bikes.flatten)
  end
end