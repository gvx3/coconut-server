require 'rails_helper'

RSpec.describe "Aromatics", type: :request do
  describe "GET /aromatics" do
    it "works! (now write some real specs)" do
      get aromatics_path
      expect(response).to have_http_status(200)
    end
  end
end
