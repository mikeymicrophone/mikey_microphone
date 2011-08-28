require 'spec_helper'

describe "bands/index.html.erb" do
  before(:each) do
    assign(:bands, [
      stub_model(Band,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Band,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of bands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "a", :text => "Name".to_s, :count => 2

  end
end
