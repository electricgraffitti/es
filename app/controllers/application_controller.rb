class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all
  helper_method  :current_admin_session, :current_admin, :store_location, :super_admin

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
        redirect_to new_admin_session_url
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
