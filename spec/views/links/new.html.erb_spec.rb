require 'spec_helper'

describe "links/new.html.erb" do
  before(:each) do
    assign(:link, stub_model(Link,
      :linked_type => "MyString",
      :linked_id => 1,
      :location => "MyText"
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_linked_type", :name => "link[linked_type]"
      assert_select "input#link_linked_id", :name => "link[linked_id]"
      assert_select "textarea#link_location", :name => "link[location]"
    end
  end
end
