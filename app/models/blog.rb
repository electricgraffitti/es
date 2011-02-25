# == Schema Information
#
# Table name: blogs
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Blog < ActiveRecord::Base
  
  
  #Associations
  has_many :comments
  has_many :assets,  :dependent =>  :destroy
  
  
  #Assets
  accepts_nested_attributes_for :assets, :allow_destroy => true, :reject_if => lambda { |a| a[:attachment].blank? }
  
  
end
