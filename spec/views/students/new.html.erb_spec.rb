require 'spec_helper'

describe "students/new.html.erb" do
  before(:each) do
    assign(:student, stub_model(Student,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :username => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_first_name", :name => "student[first_name]"
      assert_select "input#student_last_name", :name => "student[last_name]"
      assert_select "input#student_email", :name => "student[email]"
      assert_select "input#student_username", :name => "student[username]"
    end
  end
end
