require 'spec_helper'

describe "photos/show.html.erb" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :name => "Name",
      :path => "Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Path/)
  end
end
