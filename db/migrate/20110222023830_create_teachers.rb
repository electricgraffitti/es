class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :single_access_token
      t.string :perishable_token
      t.integer :login_count
      t.integer :failed_login_count
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip

      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
