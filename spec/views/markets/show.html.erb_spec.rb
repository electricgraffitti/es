require 'spec_helper'

describe "markets/show.html.erb" do
  before(:each) do
    @market = assign(:market, stub_model(Market))
  end

  it "renders attributes in <p>" do
    render
  end
end
