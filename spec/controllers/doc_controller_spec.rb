require 'rails_helper'

RSpec.describe(DocController, type: :controller) do
  describe("GET #parcel") do
    it("is successful") do
      get(:parcel)
      expect(response).to(be_success)
    end
  end
end

