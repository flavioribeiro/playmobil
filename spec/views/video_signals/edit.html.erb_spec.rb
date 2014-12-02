require 'rails_helper'

RSpec.describe "video_signals/edit", :type => :view do
  before(:each) do
    @video_signal = assign(:video_signal, VideoSignal.create!(
      :name => "MyString",
      :source => "MyString"
    ))
  end

  it "renders the edit video_signal form" do
    render

    assert_select "form[action=?][method=?]", video_signal_path(@video_signal), "post" do

      assert_select "input#video_signal_name[name=?]", "video_signal[name]"

      assert_select "input#video_signal_source[name=?]", "video_signal[source]"
    end
  end
end
