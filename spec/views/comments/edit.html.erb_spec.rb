require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :blog_id => 1,
      :author => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_blog_id", :name => "comment[blog_id]"
      assert_select "input#comment_author", :name => "comment[author]"
      assert_select "textarea#comment_body", :name => "comment[body]"
    end
  end
end
