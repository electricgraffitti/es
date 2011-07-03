class NotificationsController < ApplicationController
  
  def general_contact
    Notification.general_contact(params).deliver
    respond_to do |format|
      format.html {redirect_to contact_path, :notice => "Your Submission has been sent."}
    end
  end
  
end
