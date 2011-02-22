class CreateTeacherSessions < ActiveRecord::Migration
  def self.up
    create_table :teacher_sessions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :teacher_sessions
  end
end
