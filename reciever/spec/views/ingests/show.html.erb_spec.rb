require 'rails_helper'

RSpec.describe "ingests/show", :type => :view do
  before(:each) do
    @ingest = assign(:ingest, Ingest.create!(
      :host => "Host"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Host/)
  end
end
