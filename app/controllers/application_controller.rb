class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all
  helper_method :store_location, :super_admin, 
                :current_admin_session, :current_admin, :require_admin, :require_no_admin, 
                :current_teacher_session, :current_teacher, :require_teacher, :require_no_teacher, 
                :current_student_session, :current_student, :require_student, :require_no_student

  private
  
    def current_admin_session
      return @current_admin_session if defined?(@current_admin_session)
      @current_admin_session = AdminSession.find
    end

    def current_admin
      return @current_admin if defined?(@current_admin)
      @current_admin = current_admin_session && current_admin_session.record
    end

    def require_admin
      unless current_admin
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to admin_login_path
        return false
      end
    end

    def require_no_admin
      if current_admin
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to root_url
        return false
      end
    end
    
    def current_teacher_session
      return @current_teacher_session if defined?(@current_teacher_session)
      @current_teacher_session = TeacherSession.find
    end

    def current_teacher
      return @current_teacher if defined?(@current_teacher)
      @current_teacher = current_teacher_session && current_teacher_session.record
    end

    def require_teacher
      unless current_teacher
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to login_path
        return false
      end
    end

    def require_no_teacher
      if current_
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to root_url
        return false
      end
    end
    
    def current_student_session
      return @current_student_session if defined?(@current_student_session)
      @current_student_session = StudentSession.find
    end

    def current_student
      return @current_student if defined?(@current_student)
      @current_student = current_student_session && current_student_session.record
    end

    def require_student
      unless current_student
        store_location
        flash[:notice] = "You must be logged in to access this page"
        redirect_to login_path
        return false
      end
    end

    def require_no_student
      if current_student
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to root_url
        return false
      end
    end
    
    def return_link(set_path, default_path)
      if set_path
        redirect_link = set_path
      else
        redirect_link = default_path
      end
      return redirect_link
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

  protected

    def super_admin
      unless super?
        return false
      end
    end

    def super?
      authenticate_or_request_with_http_basic do |username, password|
        username == APP['username'] && password == APP['password']
      end
    end

end
