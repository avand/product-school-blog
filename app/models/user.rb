# Validation
# Querying
# Persistence
# Lifecycle hooks (after save, do something...)
# Associations
class User < ActiveRecord::Base
  DRIVING_AGE_LIMIT = 16
  
  has_secure_password validations: false
  
  has_many :posts
  has_many :comments
  
  validates_presence_of :first_name
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  def welcome_message
    time_of_day = Time.now.hour
    salutation = "Good morning"
    
    if time_of_day > 11
      salutation = "Good afternoon"
    elsif time_of_day > 16
      salutation = "Good evening"
    elsif time_of_day > 20
      salutation = "Good night"
    end
    
    "#{salutation}, #{full_name}"
  end

  def can_drive?
    age >= DRIVING_AGE_LIMIT
  end
end
