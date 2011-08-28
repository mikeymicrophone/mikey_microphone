require 'spec_helper'

describe "details/index.html.erb" do
  before(:each) do
    assign(:details, [
      stub_model(Detail,
        :described_type => "App",
        :described_id => 1,
        :description => "MyText"
      ),
      stub_model(Detail,
        :described_type => "Band",
        :described_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "a", :text => "Band", :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
