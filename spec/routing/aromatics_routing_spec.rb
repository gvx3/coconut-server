require "rails_helper"

RSpec.describe AromaticsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/aromatics").to route_to("aromatics#index")
    end

    it "routes to #show" do
      expect(:get => "/aromatics/1").to route_to("aromatics#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/aromatics").to route_to("aromatics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aromatics/1").to route_to("aromatics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aromatics/1").to route_to("aromatics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aromatics/1").to route_to("aromatics#destroy", :id => "1")
    end
  end
end
