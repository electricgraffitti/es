# == Schema Information
#
# Table name: classrooms
#
#  id         :integer(4)      not null, primary key
#  teacher_id :integer(4)
#  student_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Classroom < ActiveRecord::Base
  
  #Associations
  has_many :teachers
  has_many :students
  
end
