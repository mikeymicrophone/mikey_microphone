require 'spec_helper'

describe "books/edit.html.erb" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :name => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_name", :name => "book[name]"
    end
  end
end