# == Schema Information
#
# Table name: contact_submissions
#
#  id              :integer(4)      not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  comments        :text
#  inquiry_type    :string(255)
#  teacher_subject :string(255)
#  teacher_grade   :string(255)
#  interest        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class ContactSubmission < ActiveRecord::Base
  
  attr_accessor :country, :state
  
  def self.set_and_send_submission(params)
    self.create(
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :email => params[:email],
      :state => params[:state],
      :country => params[:country],
      :comments => params[:comments],
      :inquiry_type => params[:inquiry_type],
      :teacher_subject => params[:teacher_subject],
      :teacher_grade => params[:teacher_grade],
      :interest => params[:involved_interest]
    )
    Notification.general_contact(params).deliver
  end
  
  
end
