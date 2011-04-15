require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :text => "MyText",
      :commendable_type => "MyString",
      :commendable_id => 1,
      :email => "MyString",
      :name => "MyString",
      :url => "MyString",
      :public => false
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "textarea#comment_text", :name => "comment[text]"
      assert_select "input#comment_commendable_type", :name => "comment[commendable_type]"
      assert_select "input#comment_commendable_id", :name => "comment[commendable_id]"
      assert_select "input#comment_email", :name => "comment[email]"
      assert_select "input#comment_name", :name => "comment[name]"
      assert_select "input#comment_url", :name => "comment[url]"
      assert_select "input#comment_public", :name => "comment[public]"
    end
  end
end
