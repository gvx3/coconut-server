require "rails_helper"

RSpec.describe StoreTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/store_types").to route_to("store_types#index")
    end

    it "routes to #show" do
      expect(:get => "/store_types/1").to route_to("store_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/store_types").to route_to("store_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/store_types/1").to route_to("store_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/store_types/1").to route_to("store_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/store_types/1").to route_to("store_types#destroy", :id => "1")
    end
  end
end
