class AdminSessionsController < ApplicationController

  def new
    @admin_session = AdminSession.new
  end

  def create
    @admin_session = AdminSession.new(params[:admin_session])
    if @admin_session.save
      flash[:notice] = "Login successful!"
      redirect_to admin_dashboard_path
    else
      render :action => :new
    end
  end

  def destroy
    current_admin_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to root_path
  end
  
  def check_session
    if current_admin
      redirect_to admin_dashboard_path
    else
      redirect_to new_admin_session_path
    end
  end

end
