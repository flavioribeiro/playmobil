require "rails_helper"

RSpec.describe IngestsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingests").to route_to("ingests#index")
    end

    it "routes to #new" do
      expect(:get => "/ingests/new").to route_to("ingests#new")
    end

    it "routes to #show" do
      expect(:get => "/ingests/1").to route_to("ingests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingests/1/edit").to route_to("ingests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingests").to route_to("ingests#create")
    end

    it "routes to #update" do
      expect(:put => "/ingests/1").to route_to("ingests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingests/1").to route_to("ingests#destroy", :id => "1")
    end

  end
end
