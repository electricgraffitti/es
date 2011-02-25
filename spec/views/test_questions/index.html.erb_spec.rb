require 'spec_helper'

describe "test_questions/index.html.erb" do
  before(:each) do
    assign(:test_questions, [
      stub_model(TestQuestion,
        :game_id => 1
      ),
      stub_model(TestQuestion,
        :game_id => 1
      )
    ])
  end

  it "renders a list of test_questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
