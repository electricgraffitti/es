require "spec_helper"

describe TestQuestionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/test_questions" }.should route_to(:controller => "test_questions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/test_questions/new" }.should route_to(:controller => "test_questions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/test_questions/1" }.should route_to(:controller => "test_questions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/test_questions/1/edit" }.should route_to(:controller => "test_questions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/test_questions" }.should route_to(:controller => "test_questions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/test_questions/1" }.should route_to(:controller => "test_questions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/test_questions/1" }.should route_to(:controller => "test_questions", :action => "destroy", :id => "1")
    end

  end
end
