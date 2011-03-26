# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  blog_id    :integer(4)
#  author     :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  student_id :integer(4)
#

class Comment < ActiveRecord::Base
  
  #Associations
  belongs_to :blog
  belongs_to :student
  
end
