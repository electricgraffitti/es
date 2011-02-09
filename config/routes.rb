Es::Application.routes.draw do
  
  resources :admins
  resources :admin_sessions
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :account_login
  match "admin-logout" => "admin_sessions#destroy", :as => :account_logout
  match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard
  
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
