require 'spec_helper'

describe "photos/index.html.erb" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :name => "Name",
        :path => "Path"
      ),
      stub_model(Photo,
        :name => "Name",
        :path => "Path"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    
  end
end
