require "rails_helper"

RSpec.describe(Rate, type: :model) do
  it("has a valid factory") do
    expect(FactoryGirl.build(:rate)).to(be_valid)
  end

  context("is invalid") do
    it("without a name") do
      expect(FactoryGirl.build(:rate, name: nil)).to_not(be_valid)
    end

    it("without a shipment") do
      expect(FactoryGirl.build(:rate, shipment_id: nil)).to_not(be_valid)
    end

    it("without a cost") do
      expect(FactoryGirl.build(:rate, cost: nil)).to_not(be_valid)
    end
  end
end

