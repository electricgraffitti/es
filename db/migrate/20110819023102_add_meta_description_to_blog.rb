class AddMetaDescriptionToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :meta_description, :text
  end

  def self.down
    remove_column :blogs, :meta_description
  end
end
