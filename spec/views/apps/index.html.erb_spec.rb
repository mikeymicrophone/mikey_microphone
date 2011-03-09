require 'spec_helper'

describe "apps/index.html.erb" do
  before(:each) do
    assign(:apps, [
      stub_model(App,
        :name => "Name",
        :description => "MyText",
        :url => "Url"
      ),
      stub_model(App,
        :name => "Name",
        :description => "MyText",
        :url => "Url"
      )
    ])
  end

  it "renders a list of apps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
