require "rails_helper"

RSpec.describe OurStoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/our_stories").to route_to("our_stories#index")
    end

    it "routes to #show" do
      expect(:get => "/our_stories/1").to route_to("our_stories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/our_stories").to route_to("our_stories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/our_stories/1").to route_to("our_stories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/our_stories/1").to route_to("our_stories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/our_stories/1").to route_to("our_stories#destroy", :id => "1")
    end
  end
end
