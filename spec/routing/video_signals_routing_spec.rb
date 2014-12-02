require "rails_helper"

RSpec.describe VideoSignalsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/video_signals").to route_to("video_signals#index")
    end

    it "routes to #new" do
      expect(:get => "/video_signals/new").to route_to("video_signals#new")
    end

    it "routes to #show" do
      expect(:get => "/video_signals/1").to route_to("video_signals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/video_signals/1/edit").to route_to("video_signals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/video_signals").to route_to("video_signals#create")
    end

    it "routes to #update" do
      expect(:put => "/video_signals/1").to route_to("video_signals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/video_signals/1").to route_to("video_signals#destroy", :id => "1")
    end

  end
end
