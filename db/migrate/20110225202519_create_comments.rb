class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :blog_id
      t.string :author
      t.text :body

      t.timestamps
    end
    add_index :comments, :blog_id
  end

  def self.down
    drop_table :comments
  end
end
