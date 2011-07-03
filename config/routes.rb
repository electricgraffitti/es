Es::Application.routes.draw do
  
  match "mark_it_up/preview" => "mark_it_up#preview"
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :admin_login
  match "admin-logout" => "admin_sessions#destroy", :as => :admin_logout
  match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard
  
  match "login" => "pages#login", :as => :login
  match "logout" => "pages#logout", :as => :logout
  
  match "student-login" => "students#new", :as => :student_login
  match "student-logout" => "students#destroy", :as => :student_logout
  
  match "teacher-login" => "teachers#new", :as => :teacher_login
  match "teacher-logout" => "teachers#destroy", :as => :teacher_logout
  
  # Password Reset Path
  match "password-reset-submit" => "password_reset#create", :as => :password_submit_reset
  
  # Custom Routes
  match "contact-energy-solutions" => "pages#contact", :as => :contact
  match "about-energy-solutions" => "pages#about", :as => :about
  match "energy-solutions-privacy-policy" => "pages#privacy", :as => :privacy
  match "energy-solutions-terms-and-conditions" => "pages#terms", :as => :terms
  match "energy-solutions-faqs" => "pages#faq", :as => :faq
  match "energy-solutions-nuclear_industry_professional" => "pages#nuclear_industry_professional", :as => :nip
  
  # Mailer Paths
  match "core-reaction-contact-form" => "notifications#general_contact", :as => :general_form
  
  # Game Paths
  match "game-login" => "games#new", :as => :game_login
  
  resources :gamerooms
  resources :comments
  resources :blogs
  resources :subscriptions
  resources :markets
  resources :test_questions
  resources :classrooms
  resources :games
  resources :students
  resources :student_sessions
  resources :teachers
  resources :teacher_sessions
  resources :admins
  resources :admin_sessions
  
  root :to => "pages#index"

end
