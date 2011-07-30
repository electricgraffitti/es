class CreateContactSubmissions < ActiveRecord::Migration
  def self.up
    create_table :contact_submissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :comments
      t.string :inquiry_type
      t.string :teacher_subject
      t.string :teacher_grade
      t.string :interest

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_submissions
  end
end
