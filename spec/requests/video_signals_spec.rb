require 'rails_helper'

RSpec.describe "VideoSignals", :type => :request do
  describe "GET /video_signals" do
    it "works! (now write some real specs)" do
      get video_signals_path
      expect(response).to have_http_status(200)
    end
  end
end
