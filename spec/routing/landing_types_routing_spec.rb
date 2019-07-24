require "rails_helper"

RSpec.describe LandingTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/landing_types").to route_to("landing_types#index")
    end

    it "routes to #show" do
      expect(:get => "/landing_types/1").to route_to("landing_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/landing_types").to route_to("landing_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/landing_types/1").to route_to("landing_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/landing_types/1").to route_to("landing_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/landing_types/1").to route_to("landing_types#destroy", :id => "1")
    end
  end
end
