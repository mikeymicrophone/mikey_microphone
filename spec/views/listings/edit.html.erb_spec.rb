require 'spec_helper'

describe "listings/edit.html.erb" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :person => nil,
      :list => nil
    ))
  end

  it "renders the edit listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => listings_path(@listing), :method => "post" do
      assert_select "input#listing_person", :name => "listing[person]"
      assert_select "input#listing_list", :name => "listing[list]"
    end
  end
end
