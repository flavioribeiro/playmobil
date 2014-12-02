require 'rails_helper'

RSpec.describe "video_signals/new", :type => :view do
  before(:each) do
    assign(:video_signal, VideoSignal.new(
      :name => "MyString",
      :source => "MyString"
    ))
  end

  it "renders new video_signal form" do
    render

    assert_select "form[action=?][method=?]", video_signals_path, "post" do

      assert_select "input#video_signal_name[name=?]", "video_signal[name]"

      assert_select "input#video_signal_source[name=?]", "video_signal[source]"
    end
  end
end
