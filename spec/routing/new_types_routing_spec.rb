require "rails_helper"

RSpec.describe NewTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/new_types").to route_to("new_types#index")
    end

    it "routes to #show" do
      expect(:get => "/new_types/1").to route_to("new_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/new_types").to route_to("new_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_types/1").to route_to("new_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_types/1").to route_to("new_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_types/1").to route_to("new_types#destroy", :id => "1")
    end
  end
end
