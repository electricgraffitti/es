class AddMetaKeywordsToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :meta_keywords, :text
  end

  def self.down
    remove_column :blogs, :meta_keywords
  end
end
