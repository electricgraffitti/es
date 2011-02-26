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
  
  #Validations
  validates :title, :body, :presence => true
    
  #Associations
  has_many :comments, :dependent => :destroy
  has_many :assets,  :dependent =>  :destroy
  
  
  #Assets
  accepts_nested_attributes_for :assets, :allow_destroy => true, :reject_if => lambda { |a| a[:attachment].blank? }
  
  
end
