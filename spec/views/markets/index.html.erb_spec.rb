require 'spec_helper'

describe "markets/index.html.erb" do
  before(:each) do
    assign(:markets, [
      stub_model(Market),
      stub_model(Market)
    ])
  end

  it "renders a list of markets" do
    render
  end
end
