Es::Application.routes.draw do
  
  resources :students
  resources :student_sessions
  resources :teachers
  resources :teacher_sessions
  resources :admins
  resources :admin_sessions
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :account_login
  match "admin-logout" => "admin_sessions#destroy", :as => :account_logout
  match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard
  
  match "login" => "pages#login", :as => :login
  match "logout" => "pagens#logout", :as => :logout
  
  match "student-login" => "students#new", :as => :student_login
  match "student-logout" => "students#destroy", :as => :student_logout
  
  match "teacher-login" => "teachers#new", :as => :teacher_login
  match "teacher-logout" => "teachers#destroy", :as => :teacher_logout
  
  # Password Reset Path
  match "password-reset-submit" => "password_reset#create", :as => :password_submit_reset
  
  # Custom Routes
  match "contact-#{APP[:application_name]}" => "pages#contact", :as => :contact
  match "about-#{APP[:application_name]}" => "pages#about", :as => :about
  match "#{APP[:application_name]}-privacy-policy" => "pages#privacy", :as => :privacy
  match "#{APP[:application_name]}-terms-and-conditions" => "pages#terms", :as => :terms
  match "#{APP[:application_name]}-faqs" => "pages#faq", :as => :faq
  
  root :to => "pages#index"

end
