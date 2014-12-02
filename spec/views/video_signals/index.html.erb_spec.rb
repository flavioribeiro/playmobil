require 'rails_helper'

RSpec.describe "video_signals/index", :type => :view do
  before(:each) do
    assign(:video_signals, [
      VideoSignal.create!(
        :name => "Name",
        :source => "Source"
      ),
      VideoSignal.create!(
        :name => "Name",
        :source => "Source"
      )
    ])
  end

  it "renders a list of video_signals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
