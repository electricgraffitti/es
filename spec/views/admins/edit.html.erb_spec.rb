require 'spec_helper'

describe "admins/edit.html.erb" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :username => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_path(@admin), :method => "post" do
      assert_select "input#admin_first_name", :name => "admin[first_name]"
      assert_select "input#admin_last_name", :name => "admin[last_name]"
      assert_select "input#admin_email", :name => "admin[email]"
      assert_select "input#admin_username", :name => "admin[username]"
    end
  end
end
