require 'spec_helper'

describe "classrooms/show.html.erb" do
  before(:each) do
    @classroom = assign(:classroom, stub_model(Classroom,
      :teacher_id => 1,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
