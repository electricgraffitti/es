class CreateTestQuestions < ActiveRecord::Migration
  def self.up
    create_table :test_questions do |t|
      t.integer :game_id

      t.timestamps
    end
    add_index :test_questions, :game_id
  end

  def self.down
    drop_table :test_questions
  end
end
