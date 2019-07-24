require "rails_helper"

RSpec.describe OurStoryTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/our_story_types").to route_to("our_story_types#index")
    end

    it "routes to #show" do
      expect(:get => "/our_story_types/1").to route_to("our_story_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/our_story_types").to route_to("our_story_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/our_story_types/1").to route_to("our_story_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/our_story_types/1").to route_to("our_story_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/our_story_types/1").to route_to("our_story_types#destroy", :id => "1")
    end
  end
end
