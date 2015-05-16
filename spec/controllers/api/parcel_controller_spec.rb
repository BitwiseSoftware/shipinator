require "rails_helper"

RSpec.describe(Api::ParcelController, type: :controller) do
  describe("POST #create") do
    context("with valid attributes") do
      it("creates a parcel") do
        post(:create, format: "json", 
             parcel: FactoryGirl.attributes_for(:parcel))
        expect(response).to(have_http_status(201))
        expect(Parcel.count).to(eq(1))
      end
    end

    context("with invalid attributes") do
      it("does not creates a parcel") do
        post(:create, format: "json", 
             parcel: FactoryGirl.attributes_for(:parcel, height: nil))
        expect(response).to(have_http_status(400))
        expect(Parcel.count).to(eq(0))
      end
    end
  end

  describe("GET #index") do
    it("is succussful") do
      get(:index, format: "json")
      expect(response).to(be_success)
    end
  end
end

