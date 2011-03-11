require "spec_helper"

describe DetailsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/details" }.should route_to(:controller => "details", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/details/new" }.should route_to(:controller => "details", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/details/1" }.should route_to(:controller => "details", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/details/1/edit" }.should route_to(:controller => "details", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/details" }.should route_to(:controller => "details", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/details/1" }.should route_to(:controller => "details", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/details/1" }.should route_to(:controller => "details", :action => "destroy", :id => "1")
    end

  end
end
