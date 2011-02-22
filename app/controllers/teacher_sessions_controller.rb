class TeacherSessionsController < ApplicationController

  def new
    @teacher_session = StudentSession.new
  end

  def create
    @teacher_session = AdminSession.new(params[:teacher_session])
    if @teacher_session.save
      flash[:notice] = "Login successful!"
      redirect_to teacher_dashboard_path
    else
      flash[:notice] = "Invalid Credentials"
      redirect_to login_path
    end
  end

  def destroy
    current_teacher_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to root_path
  end
  
  def check_session
    if current_teacher
      redirect_to teacher_dashboard_path
    else
      redirect_to login_path
    end
  end

end
