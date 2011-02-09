require 'spec_helper'

describe "admins/new.html.erb" do
  before(:each) do
    assign(:admin, stub_model(Admin,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :username => "MyString"
    ).as_new_record)
  end

  it "renders new admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admins_path, :method => "post" do
      assert_select "input#admin_first_name", :name => "admin[first_name]"
      assert_select "input#admin_last_name", :name => "admin[last_name]"
      assert_select "input#admin_email", :name => "admin[email]"
      assert_select "input#admin_username", :name => "admin[username]"
    end
  end
end
