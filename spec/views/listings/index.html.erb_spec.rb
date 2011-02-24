require 'spec_helper'

describe "listings/index.html.erb" do
  before(:each) do
    assign(:listings, [
      stub_model(Listing,
        :person => nil,
        :list => nil
      ),
      stub_model(Listing,
        :person => nil,
        :list => nil
      )
    ])
  end

  it "renders a list of listings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
