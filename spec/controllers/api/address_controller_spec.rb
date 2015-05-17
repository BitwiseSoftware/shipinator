require "rails_helper"

RSpec.describe(Api::AddressController, type: :controller) do
  describe("POST #create") do
    context("with valid attributes") do
      it("creates an address") do
        post(:create, format: "json",
             address: FactoryGirl.attributes_for(:address))
        expect(response).to(have_http_status(201))
        expect(Address.count).to(eq(1))
      end
    end

    context("with invalid attributes") do
      it("does not creates an address") do
        post(:create, format: "json", 
             address: FactoryGirl.attributes_for(:address, street: nil))
        expect(response).to(have_http_status(400))
        expect(Address.count).to(eq(0))
      end
    end
  end

  describe("GET #index") do
    it("is successful") do
      get(:index, format: "json")
      expect(response).to(be_success)
    end
  end

  describe("GET #show") do
    it("is successful") do
      Address.create!(FactoryGirl.attributes_for(:address))
      get(:show, format: "json", id: 1)
      expect(response).to(be_success)
    end
  end
end
