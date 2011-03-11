require 'spec_helper'

describe "links/index.html.erb" do
  before(:each) do
    assign(:links, [
      stub_model(Link,
        :linked_type => "Linked Type",
        :linked_id => 1,
        :location => "MyText"
      ),
      stub_model(Link,
        :linked_type => "Linked Type",
        :linked_id => 1,
        :location => "MyText"
      )
    ])
  end

  it "renders a list of links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Linked Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
