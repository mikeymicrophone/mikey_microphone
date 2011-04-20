require 'spec_helper'

describe "covers/new.html.erb" do
  before(:each) do
    assign(:cover, stub_model(Cover,
      :band => nil,
      :song => nil
    ).as_new_record)
  end

  it "renders new cover form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => covers_path, :method => "post" do
      assert_select "input#cover_band", :name => "cover[band]"
      assert_select "input#cover_song", :name => "cover[song]"
    end
  end
end
