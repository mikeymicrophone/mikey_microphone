require 'spec_helper'

describe "bands/new.html.erb" do
  before(:each) do
    assign(:band, stub_model(Band,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new band form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bands_path, :method => "post" do
      assert_select "input#band_name", :name => "band[name]"
      assert_select "textarea#band_description", :name => "band[description]"
    end
  end
end
