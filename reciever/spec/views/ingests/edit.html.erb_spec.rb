require 'rails_helper'

RSpec.describe "ingests/edit", :type => :view do
  before(:each) do
    @ingest = assign(:ingest, Ingest.create!(
      :host => "MyString"
    ))
  end

  it "renders the edit ingest form" do
    render

    assert_select "form[action=?][method=?]", ingest_path(@ingest), "post" do

      assert_select "input#ingest_host[name=?]", "ingest[host]"
    end
  end
end
