require 'rails_helper'

RSpec.describe "StoreTypes", type: :request do
  describe "GET /store_types" do
    it "works! (now write some real specs)" do
      get store_types_path
      expect(response).to have_http_status(200)
    end
  end
end
