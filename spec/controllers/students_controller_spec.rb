require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe StudentsController do

  def mock_student(stubs={})
    @mock_student ||= mock_model(Student, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all students as @students" do
      Student.stub(:all) { [mock_student] }
      get :index
      assigns(:students).should eq([mock_student])
    end
  end

  describe "GET show" do
    it "assigns the requested student as @student" do
      Student.stub(:find).with("37") { mock_student }
      get :show, :id => "37"
      assigns(:student).should be(mock_student)
    end
  end

  describe "GET new" do
    it "assigns a new student as @student" do
      Student.stub(:new) { mock_student }
      get :new
      assigns(:student).should be(mock_student)
    end
  end

  describe "GET edit" do
    it "assigns the requested student as @student" do
      Student.stub(:find).with("37") { mock_student }
      get :edit, :id => "37"
      assigns(:student).should be(mock_student)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created student as @student" do
        Student.stub(:new).with({'these' => 'params'}) { mock_student(:save => true) }
        post :create, :student => {'these' => 'params'}
        assigns(:student).should be(mock_student)
      end

      it "redirects to the created student" do
        Student.stub(:new) { mock_student(:save => true) }
        post :create, :student => {}
        response.should redirect_to(student_url(mock_student))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student as @student" do
        Student.stub(:new).with({'these' => 'params'}) { mock_student(:save => false) }
        post :create, :student => {'these' => 'params'}
        assigns(:student).should be(mock_student)
      end

      it "re-renders the 'new' template" do
        Student.stub(:new) { mock_student(:save => false) }
        post :create, :student => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested student" do
        Student.stub(:find).with("37") { mock_student }
        mock_student.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student => {'these' => 'params'}
      end

      it "assigns the requested student as @student" do
        Student.stub(:find) { mock_student(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student).should be(mock_student)
      end

      it "redirects to the student" do
        Student.stub(:find) { mock_student(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_url(mock_student))
      end
    end

    describe "with invalid params" do
      it "assigns the student as @student" do
        Student.stub(:find) { mock_student(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student).should be(mock_student)
      end

      it "re-renders the 'edit' template" do
        Student.stub(:find) { mock_student(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested student" do
      Student.stub(:find).with("37") { mock_student }
      mock_student.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the students list" do
      Student.stub(:find) { mock_student }
      delete :destroy, :id => "1"
      response.should redirect_to(students_url)
    end
  end

end
