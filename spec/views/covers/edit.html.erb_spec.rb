require 'spec_helper'

describe "covers/edit.html.erb" do
  before(:each) do
    @cover = assign(:cover, stub_model(Cover,
      :band => nil,
      :song => nil
    ))
  end

  it "renders the edit cover form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => covers_path(@cover), :method => "post" do
      assert_select "select#cover_band_id", :name => "cover[band]"
      assert_select "select#cover_song_id", :name => "cover[song]"
    end
  end
end
