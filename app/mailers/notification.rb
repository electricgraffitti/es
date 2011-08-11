class Notification < ActionMailer::Base
  default :from => "info@corereaction.org"
  
  def general_contact(params)
    @username = params[:first_name] + " " + params[:last_name]
    @email = params[:email]
    @state = params[:state]
    @country = params[:country]
    @comments = params[:comments]
    @inquiry_type = params[:inquiry_type]
    @teacher_subject = params[:teacher_subject]
    @teacher_grade = params[:teacher_grade]
    @interest = params[:involved_interest]
    @notify_me = params[:notify_me]
    
    mail(:to => "Kiersten Clements <kxclements@energysolutions.com>", :subject => "Core Reaction Inquiry")
  end
  
end


# Kiersten Clements <kxclements@energysolutions.com>