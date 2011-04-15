require 'spec_helper'

describe "chapters/index.html.erb" do
  before(:each) do
    assign(:chapters, [
      stub_model(Chapter,
        :name => "Name",
        :book => nil,
        :content => "MyText"
      ),
      stub_model(Chapter,
        :name => "Name",
        :book => nil,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of chapters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
