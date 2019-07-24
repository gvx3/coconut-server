require 'rails_helper'

RSpec.describe "OurStories", type: :request do
  describe "GET /our_stories" do
    it "works! (now write some real specs)" do
      get our_stories_path
      expect(response).to have_http_status(200)
    end
  end
end
