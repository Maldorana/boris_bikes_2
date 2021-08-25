require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it "gets a bike" do
    bike = DockingStation.new.release_bike
    expect(bike).to eq(bike)
  end
end