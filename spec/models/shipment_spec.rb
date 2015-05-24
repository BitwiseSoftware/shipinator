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

    it("without a parcel") do
      expect(FactoryGirl.build(:shipment, parcel_id: nil)).to_not(be_valid)
    end
  end

  context("when return_address") do
    it("is nil, sets it to origin") do
      shipment = FactoryGirl.create(:shipment, return_address_id: nil)
      expect(shipment.return_address_id).to(eq(shipment.origin_id))
    end

    it("exists, does nothing") do
      shipment = FactoryGirl.build(:shipment)
      return_address_id = shipment.return_address_id
      shipment.save!
      expect(shipment.return_address_id).to(eq(return_address_id))
    end
  end

  context("when return_address") do
    it("is nil, sets it to origin") do
      shipment = FactoryGirl.create(:shipment, return_address_id: nil)
      expect(shipment.return_address_id).to(eq(shipment.origin_id))
    end

    it("exists, does nothing") do
      shipment = FactoryGirl.build(:shipment)
      return_address_id = shipment.return_address_id
      shipment.save!
      expect(shipment.return_address_id).to(eq(return_address_id))
    end
  end
end

