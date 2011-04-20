require 'spec_helper'

describe "covers/show.html.erb" do
  before(:each) do
    @cover = assign(:cover, stub_model(Cover,
      :band => nil,
      :song => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
