require "rails_helper"

RSpec.describe(Api::ShipmentController, type: :controller) do
  describe("POST #create") do
    context("with valid attributes") do
      it("creates a shipment") do
        post(:create, format: "json",
             shipment: FactoryGirl.attributes_for(:shipment))
        expect(response).to(have_http_status(201))
        expect(Shipment.count).to(eq(1))
      end
    end

    context("with invalid attributes") do
      it("does not create a shipment") do
        post(:create, format: "json",
             shipment: FactoryGirl.attributes_for(:shipment, origin_id: nil))
        expect(response).to(have_http_status(400))
        expect(Shipment.count).to(eq(0))
      end
    end
  end

  describe("GET #index") do
    it("is succussful") do
      get(:index, format: "json")
      expect(response).to(be_success)
    end
  end

  describe("GET #show") do
    it("is successful") do
      Shipment.create!(FactoryGirl.attributes_for(:shipment))
      get(:show, format: "json", id: 1)
      expect(response).to(be_success)
    end
  end

  describe("GET #rates") do
    it("is successful") do
      Shipment.create!(FactoryGirl.attributes_for(:shipment))
      get(:rates, format: "json", id: 1)
      expect(response).to(be_success)
    end
  end
end
