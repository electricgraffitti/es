require "spec_helper"

describe GameroomsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/gamerooms" }.should route_to(:controller => "gamerooms", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/gamerooms/new" }.should route_to(:controller => "gamerooms", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/gamerooms/1" }.should route_to(:controller => "gamerooms", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/gamerooms/1/edit" }.should route_to(:controller => "gamerooms", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/gamerooms" }.should route_to(:controller => "gamerooms", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/gamerooms/1" }.should route_to(:controller => "gamerooms", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/gamerooms/1" }.should route_to(:controller => "gamerooms", :action => "destroy", :id => "1")
    end

  end
end
