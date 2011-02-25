require "spec_helper"

describe MarketsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/markets" }.should route_to(:controller => "markets", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/markets/new" }.should route_to(:controller => "markets", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/markets/1" }.should route_to(:controller => "markets", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/markets/1/edit" }.should route_to(:controller => "markets", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/markets" }.should route_to(:controller => "markets", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/markets/1" }.should route_to(:controller => "markets", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/markets/1" }.should route_to(:controller => "markets", :action => "destroy", :id => "1")
    end

  end
end
