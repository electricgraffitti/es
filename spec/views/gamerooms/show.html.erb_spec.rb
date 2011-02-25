require 'spec_helper'

describe "gamerooms/show.html.erb" do
  before(:each) do
    @gameroom = assign(:gameroom, stub_model(Gameroom,
      :game_id => 1,
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
