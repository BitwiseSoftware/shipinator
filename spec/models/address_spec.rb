require "rails_helper"

RSpec.describe(Address, type: :model) do
  it("has a valid factory") do
    expect(FactoryGirl.build(:address)).to(be_valid)
  end

  context("is invalid") do
    it("without a name") do
      expect(FactoryGirl.build(:address, name: nil)).to_not(be_valid)
    end

    it("without a street") do
      expect(FactoryGirl.build(:address, street: nil)).to_not(be_valid)
    end

    it("without a city") do
      expect(FactoryGirl.build(:address, city: nil)).to_not(be_valid)
    end

    it("without a region") do
      expect(FactoryGirl.build(:address, region: nil)).to_not(be_valid)
    end

    it("without a country") do
      expect(FactoryGirl.build(:address, country: nil)).to_not(be_valid)
    end

    it("without a postal_code") do
      expect(FactoryGirl.build(:address, postal_code: nil)).to_not(be_valid)
    end
  end
end
