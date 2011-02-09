class Admin < ActiveRecord::Base
  
  # Validations
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :presence => true, :length => { :minimum => 2 }
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  
  # Authlogic
  acts_as_authentic do |c|
    c.logged_in_timeout = 120.minutes
  end

  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notify.password_reset(self).deliver
  end

  def full_name
    full_name = self.first_name + " " + self.last_name
    return full_name
  end
  
end
