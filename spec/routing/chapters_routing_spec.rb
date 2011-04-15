require "spec_helper"

describe ChaptersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/chapters" }.should route_to(:controller => "chapters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/chapters/new" }.should route_to(:controller => "chapters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/chapters/1" }.should route_to(:controller => "chapters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/chapters/1/edit" }.should route_to(:controller => "chapters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/chapters" }.should route_to(:controller => "chapters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/chapters/1" }.should route_to(:controller => "chapters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/chapters/1" }.should route_to(:controller => "chapters", :action => "destroy", :id => "1")
    end

  end
end
