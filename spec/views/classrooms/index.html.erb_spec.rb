require 'spec_helper'

describe "classrooms/index.html.erb" do
  before(:each) do
    assign(:classrooms, [
      stub_model(Classroom,
        :teacher_id => 1,
        :student_id => 1
      ),
      stub_model(Classroom,
        :teacher_id => 1,
        :student_id => 1
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
