class ContactSubmission < ActiveRecord::Base
  
  def self.set_and_send_submission(params)
    self.create(
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :email => params[:email],
      :comments => params[:comments],
      :inquiry_type => params[:inquiry_type],
      :teacher_subject => params[:teacher_subject],
      :teacher_grade => params[:teacher_grade],
      :interest => params[:involved_interest]
    )
    Notification.general_contact(params).deliver
  end
  
  
end
