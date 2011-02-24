require 'spec_helper'

describe "listings/show.html.erb" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :person => nil,
      :list => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
