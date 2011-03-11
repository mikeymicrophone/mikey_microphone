require 'spec_helper'

describe "links/show.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :linked_type => "Linked Type",
      :linked_id => 1,
      :location => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Linked Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
