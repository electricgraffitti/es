require 'spec_helper'

describe "markets/edit.html.erb" do
  before(:each) do
    @market = assign(:market, stub_model(Market))
  end

  it "renders the edit market form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => markets_path(@market), :method => "post" do
    end
  end
end
