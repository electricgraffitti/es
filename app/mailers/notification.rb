class Notification < ActionMailer::Base
  default :from => "info@corereaction.org"
  
  def general_contact(params)
    @username = params[:first_name] + " " + params[:last_name]
    @email = params[:email]
    @comments = params[:comments]
    @inquiry_type = params[:inquiry_type]
    @teacher_subject = params[:teacher_subject]
    @teacher_grade = params[:teacher_grade]
    @interest = params[:involved_interest]
    @notify_me = params[:notify_me]
    
    mail(:to => "Bob Hanson <bob@cube2media.com>, Larry Finn <larry@cube2media.com>", :subject => "Core Reaction Inquiry")
  end
  
end


# Kiersten Clements <kxclements@energysolutions.com>