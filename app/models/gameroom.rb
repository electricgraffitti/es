# == Schema Information
#
# Table name: gamerooms
#
#  id         :integer(4)      not null, primary key
#  game_id    :integer(4)
#  student_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Gameroom < ActiveRecord::Base
  
  #Associations
  belongs_to :student
  belongs_to :game
  
end
