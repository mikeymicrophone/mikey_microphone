require 'spec_helper'

describe "listings/new.html.erb" do
  before(:each) do
    assign(:listing, stub_model(Listing,
      :person => nil,
      :list => nil
    ).as_new_record)
  end

  it "renders new listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => listings_path, :method => "post" do
      assert_select "input#listing_person", :name => "listing[person]"
      assert_select "input#listing_list", :name => "listing[list]"
    end
  end
end
