require 'spec_helper'

describe "test_questions/show.html.erb" do
  before(:each) do
    @test_question = assign(:test_question, stub_model(TestQuestion,
      :game_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
