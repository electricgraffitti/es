require 'spec_helper'

describe "test_questions/new.html.erb" do
  before(:each) do
    assign(:test_question, stub_model(TestQuestion,
      :game_id => 1
    ).as_new_record)
  end

  it "renders new test_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => test_questions_path, :method => "post" do
      assert_select "input#test_question_game_id", :name => "test_question[game_id]"
    end
  end
end
