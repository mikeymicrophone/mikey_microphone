require 'spec_helper'

describe "covers/index.html.erb" do
  before(:each) do
    assign(:covers, [
      stub_model(Cover,
        :band => nil,
        :song => nil
      ),
      stub_model(Cover,
        :band => nil,
        :song => nil
      )
    ])
  end

  it "renders a list of covers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
