Es::Application.routes.draw do
  
  resources :admins
  resources :admin_sessions
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :account_login
  match "admin-logout" => "admin_sessions#destroy", :as => :account_logout
  match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard
  
  # Custom Routes
  match "contact-#{APP[:application_name]}" => "pages#contact", :as => :contact
  match "about-#{APP[:application_name]}" => "pages#about", :as => :about
  
  
  root :to => "pages#index"

end
