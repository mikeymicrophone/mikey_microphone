require 'spec_helper'

describe "chapters/edit.html.erb" do
  before(:each) do
    @chapter = assign(:chapter, stub_model(Chapter,
      :name => "MyString",
      :book => nil,
      :content => "MyText"
    ))
  end

  it "renders the edit chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chapters_path(@chapter), :method => "post" do
      assert_select "input#chapter_name", :name => "chapter[name]"
      assert_select "select#chapter_book_id", :name => "chapter[book]"
      assert_select "textarea#chapter_content", :name => "chapter[content]"
    end
  end
end
