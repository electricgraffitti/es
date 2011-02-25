require 'spec_helper'

describe "markets/new.html.erb" do
  before(:each) do
    assign(:market, stub_model(Market).as_new_record)
  end

  it "renders new market form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => markets_path, :method => "post" do
    end
  end
end
