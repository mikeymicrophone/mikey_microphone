require "spec_helper"

describe CoversController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/covers" }.should route_to(:controller => "covers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/covers/new" }.should route_to(:controller => "covers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/covers/1" }.should route_to(:controller => "covers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/covers/1/edit" }.should route_to(:controller => "covers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/covers" }.should route_to(:controller => "covers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/covers/1" }.should route_to(:controller => "covers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/covers/1" }.should route_to(:controller => "covers", :action => "destroy", :id => "1")
    end

  end
end
