# == Schema Information
#
# Table name: games
#
#  id         :integer(4)      not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
  
  #Associations
  belongs_to :gameroom
  has_many :students, :through => :gamerooms
  has_many :test_questions
  
end
