# == Schema Information
#
# Table name: assets
#
#  id                      :integer(4)      not null, primary key
#  teacher_id              :integer(4)
#  student_id              :integer(4)
#  blog_id                 :integer(4)
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer(4)
#  attachment_updated_at   :datetime
#

class Asset < ActiveRecord::Base
  
  #Associations
  belongs_to :teacher
  belongs_to :student
  belongs_to :blog
  
  #Paperclip
  has_attached_file :attachment,
                    :styles => {:medium => "650x323#", :small => "300x169#", :showcase => "200x200#", :thumb => "178x88#", :tiny => "89x44#"},
                    :url => '/assets/:id/:style_:basename.:extension',
                    :path => ":rails_root/public/assets/:id/:style_:basename.:extension"
end
