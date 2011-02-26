class AddStudentIdToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :student_id, :integer
    add_index  :comments, :student_id
  end

  def self.down
    remove_column :comments, :student_id
  end
end
