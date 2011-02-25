require 'spec_helper'

describe "gamerooms/new.html.erb" do
  before(:each) do
    assign(:gameroom, stub_model(Gameroom,
      :game_id => 1,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new gameroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gamerooms_path, :method => "post" do
      assert_select "input#gameroom_game_id", :name => "gameroom[game_id]"
      assert_select "input#gameroom_student_id", :name => "gameroom[student_id]"
    end
  end
end
