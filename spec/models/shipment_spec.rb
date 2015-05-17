require "rails_helper"

RSpec.describe(Shipment, type: :model) do
  it("has valid factory") do
    expect(FactoryGirl.build(:shipment)).to(be_valid)
  end

  context("is invalid") do
    it("without an origin") do
      expect(FactoryGirl.build(:shipment, origin_id: nil)).to_not(be_valid)
    end

    it("without a destination") do
      expect(FactoryGirl.build(:shipment, destination_id: nil)).to_not(be_valid)
    end
  end
end

