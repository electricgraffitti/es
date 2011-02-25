require 'spec_helper'

describe "gamerooms/edit.html.erb" do
  before(:each) do
    @gameroom = assign(:gameroom, stub_model(Gameroom,
      :game_id => 1,
      :student_id => 1
    ))
  end

  it "renders the edit gameroom form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gamerooms_path(@gameroom), :method => "post" do
      assert_select "input#gameroom_game_id", :name => "gameroom[game_id]"
      assert_select "input#gameroom_student_id", :name => "gameroom[student_id]"
    end
  end
end
