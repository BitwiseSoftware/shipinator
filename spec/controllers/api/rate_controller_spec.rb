require "rails_helper"

RSpec.describe(Api::RateController, type: :controller) do
  describe("GET #show") do
    it("is successful") do
      Rate.create!(FactoryGirl.attributes_for(:rate))
      get(:show, format: "json", id: 1)
      expect(response).to(be_success)
    end
  end
end

