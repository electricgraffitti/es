class PagesController < ApplicationController
  
  def index
  end
  
  def login
    @student_session = StudentSession.new
    @teacher_session = TeacherSession.new
  end
  
  def about
  end
  
  def contact
  end
  
  def privacy
  end
  
  def faq
  end
  
  def terms
  end
  
  def password_reset
    
  end
  
end
