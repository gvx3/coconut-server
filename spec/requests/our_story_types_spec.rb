require 'rails_helper'

RSpec.describe "OurStoryTypes", type: :request do
  describe "GET /our_story_types" do
    it "works! (now write some real specs)" do
      get our_story_types_path
      expect(response).to have_http_status(200)
    end
  end
end
