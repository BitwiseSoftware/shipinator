require 'rails_helper'

RSpec.describe(Parcel, type: :model) do
  it("has a valid factory") do
    expect(FactoryGirl.build(:parcel)).to(be_valid)
  end

  context("is invalid") do
    it("without a height") do
      expect(FactoryGirl.build(:parcel, height: nil)).to_not(be_valid)
    end

    it("without a width") do
      expect(FactoryGirl.build(:parcel, width: nil)).to_not(be_valid)
    end

    it("without a length") do
      expect(FactoryGirl.build(:parcel, length: nil)).to_not(be_valid)
    end
  end
end

