require 'bike'

describe Bike do

  describe '#report_broken' do
    it { is_expected.to respond_to(:report_broken) }

    it { is_expected.to respond_to(:broken?) }

    it "is broken" do
      bike = Bike.new
      expect(bike.broken?).to eq(true)
    end

    it "can be reported as broken" do
      bike = Bike.new
      bike.report_broken
      expect(bike).to be_broken
    end
  end
end