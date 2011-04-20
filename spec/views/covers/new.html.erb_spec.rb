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
      assert_select "select#cover_band_id", :name => "cover[band_id]"
      assert_select "select#cover_song_id", :name => "cover[song_id]"
    end
  end
end
