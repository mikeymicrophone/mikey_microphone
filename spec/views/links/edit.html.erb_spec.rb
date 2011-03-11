require 'spec_helper'

describe "links/edit.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :linked_type => "MyString",
      :linked_id => 1,
      :location => "MyText"
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
      assert_select "input#link_linked_type", :name => "link[linked_type]"
      assert_select "input#link_linked_id", :name => "link[linked_id]"
      assert_select "textarea#link_location", :name => "link[location]"
    end
  end
end
