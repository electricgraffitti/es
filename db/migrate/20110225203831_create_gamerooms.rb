class CreateGamerooms < ActiveRecord::Migration
  def self.up
    create_table :gamerooms do |t|
      t.integer :game_id
      t.integer :student_id

      t.timestamps
    end
    add_index :gamerooms, :game_id
    add_index :gamerooms, :student_id
  end

  def self.down
    drop_table :gamerooms
  end
end
