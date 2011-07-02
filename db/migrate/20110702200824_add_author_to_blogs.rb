class AddAuthorToBlogs < ActiveRecord::Migration
  def self.up
    add_column :blogs, :author, :string
    add_column :blogs, :author_title, :string
  end

  def self.down
    remove_column :blogs, :author_title
    remove_column :blogs, :author
  end
end
