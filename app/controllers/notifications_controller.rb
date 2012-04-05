class NotificationsController < ApplicationController
  
  def general_contact
        #raise params.to_yaml
    
    if params[:captcha] != ""
      raise "spider go away"
    else
      ContactSubmission.set_and_send_submission(params)
    end
    
    
    respond_to do |format|
      format.html {redirect_to contact_path, :notice => "Your Submission has been sent."}
    end
  end
  
end
