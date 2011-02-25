class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.integer :blog_id

      t.timestamps
    end
    add_index :assets, :teacher_id
    add_index :assets, :student_id
    add_index :assets, :blog_id
  end

  def self.down
    drop_table :assets
  end
end
