class StudentSessionsController < ApplicationController
  
  def new
    @student_session = StudentSession.new
  end

  def create
    @student_session = StudentSession.new(params[:student_session])
    if @student_session.save
      flash[:notice] = "Login successful!"
      redirect_to student_dashboard_path
    else
      flash[:notice] = "Invalid Credentials"
      redirect_to login_path
    end
  end

  def destroy
    current_student_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to root_path
  end
  
  def check_session
    if current_student
      redirect_to student_dashboard_path
    else
      redirect_to login_path
    end
  end

end
