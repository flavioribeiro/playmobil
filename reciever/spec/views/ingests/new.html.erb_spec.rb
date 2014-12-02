require 'rails_helper'

RSpec.describe "ingests/new", :type => :view do
  before(:each) do
    assign(:ingest, Ingest.new(
      :host => "MyString"
    ))
  end

  it "renders new ingest form" do
    render

    assert_select "form[action=?][method=?]", ingests_path, "post" do

      assert_select "input#ingest_host[name=?]", "ingest[host]"
    end
  end
end
