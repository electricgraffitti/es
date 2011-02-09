require 'spec_helper'

describe "admins/index.html.erb" do
  before(:each) do
    assign(:admins, [
      stub_model(Admin,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :username => "Username"
      ),
      stub_model(Admin,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :username => "Username"
      )
    ])
  end

  it "renders a list of admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
