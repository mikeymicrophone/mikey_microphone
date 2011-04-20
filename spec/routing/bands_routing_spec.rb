require "spec_helper"

describe BandsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/bands" }.should route_to(:controller => "bands", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/bands/new" }.should route_to(:controller => "bands", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/bands/1" }.should route_to(:controller => "bands", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/bands/1/edit" }.should route_to(:controller => "bands", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/bands" }.should route_to(:controller => "bands", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/bands/1" }.should route_to(:controller => "bands", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/bands/1" }.should route_to(:controller => "bands", :action => "destroy", :id => "1")
    end

  end
end
