require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe GameroomsController do

  def mock_gameroom(stubs={})
    @mock_gameroom ||= mock_model(Gameroom, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all gamerooms as @gamerooms" do
      Gameroom.stub(:all) { [mock_gameroom] }
      get :index
      assigns(:gamerooms).should eq([mock_gameroom])
    end
  end

  describe "GET show" do
    it "assigns the requested gameroom as @gameroom" do
      Gameroom.stub(:find).with("37") { mock_gameroom }
      get :show, :id => "37"
      assigns(:gameroom).should be(mock_gameroom)
    end
  end

  describe "GET new" do
    it "assigns a new gameroom as @gameroom" do
      Gameroom.stub(:new) { mock_gameroom }
      get :new
      assigns(:gameroom).should be(mock_gameroom)
    end
  end

  describe "GET edit" do
    it "assigns the requested gameroom as @gameroom" do
      Gameroom.stub(:find).with("37") { mock_gameroom }
      get :edit, :id => "37"
      assigns(:gameroom).should be(mock_gameroom)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created gameroom as @gameroom" do
        Gameroom.stub(:new).with({'these' => 'params'}) { mock_gameroom(:save => true) }
        post :create, :gameroom => {'these' => 'params'}
        assigns(:gameroom).should be(mock_gameroom)
      end

      it "redirects to the created gameroom" do
        Gameroom.stub(:new) { mock_gameroom(:save => true) }
        post :create, :gameroom => {}
        response.should redirect_to(gameroom_url(mock_gameroom))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gameroom as @gameroom" do
        Gameroom.stub(:new).with({'these' => 'params'}) { mock_gameroom(:save => false) }
        post :create, :gameroom => {'these' => 'params'}
        assigns(:gameroom).should be(mock_gameroom)
      end

      it "re-renders the 'new' template" do
        Gameroom.stub(:new) { mock_gameroom(:save => false) }
        post :create, :gameroom => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gameroom" do
        Gameroom.stub(:find).with("37") { mock_gameroom }
        mock_gameroom.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :gameroom => {'these' => 'params'}
      end

      it "assigns the requested gameroom as @gameroom" do
        Gameroom.stub(:find) { mock_gameroom(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:gameroom).should be(mock_gameroom)
      end

      it "redirects to the gameroom" do
        Gameroom.stub(:find) { mock_gameroom(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(gameroom_url(mock_gameroom))
      end
    end

    describe "with invalid params" do
      it "assigns the gameroom as @gameroom" do
        Gameroom.stub(:find) { mock_gameroom(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:gameroom).should be(mock_gameroom)
      end

      it "re-renders the 'edit' template" do
        Gameroom.stub(:find) { mock_gameroom(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gameroom" do
      Gameroom.stub(:find).with("37") { mock_gameroom }
      mock_gameroom.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the gamerooms list" do
      Gameroom.stub(:find) { mock_gameroom }
      delete :destroy, :id => "1"
      response.should redirect_to(gamerooms_url)
    end
  end

end