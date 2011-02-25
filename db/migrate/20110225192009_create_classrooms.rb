class CreateClassrooms < ActiveRecord::Migration
  def self.up
    create_table :classrooms do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
    add_index :classrooms, :teacher_id
    add_index :classrooms, :student_id
  end

  def self.down
    drop_table :classrooms
  end
end
