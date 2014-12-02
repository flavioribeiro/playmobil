require 'rails_helper'

RSpec.describe "video_signals/show", :type => :view do
  before(:each) do
    @video_signal = assign(:video_signal, VideoSignal.create!(
      :name => "Name",
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Source/)
  end
end
