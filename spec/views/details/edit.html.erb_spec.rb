require 'spec_helper'

describe "details/edit.html.erb" do
  before(:each) do
    @detail = assign(:detail, stub_model(Detail,
      :described_type => "MyString",
      :described_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => details_path(@detail), :method => "post" do
      assert_select "input#detail_described_type", :name => "detail[described_type]"
      assert_select "input#detail_described_id", :name => "detail[described_id]"
      assert_select "textarea#detail_description", :name => "detail[description]"
    end
  end
end
