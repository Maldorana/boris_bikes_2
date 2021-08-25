require "docking_station"

describe DockingStation do
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
  end 

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it "docks bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike) 
    end
    it "raises an error when full" do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
    end
  end

  it { is_expected.to respond_to(:bike) }
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end