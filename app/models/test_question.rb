# == Schema Information
#
# Table name: test_questions
#
#  id         :integer(4)      not null, primary key
#  game_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class TestQuestion < ActiveRecord::Base
  
  #Associations
  belongs_to :game
  
end
