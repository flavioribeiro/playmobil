require 'rails_helper'

RSpec.describe "ingests/index", :type => :view do
  before(:each) do
    assign(:ingests, [
      Ingest.create!(
        :host => "Host"
      ),
      Ingest.create!(
        :host => "Host"
      )
    ])
  end

  it "renders a list of ingests" do
    render
    assert_select "tr>td", :text => "Host".to_s, :count => 2
  end
end
