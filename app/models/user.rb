class User < ActiveRecord::Base
    validates :username, presence: true, 
                         uniqueness: { case_sensitive: false }, 
                         length: { minimum: 3, maximum: 25 }
    VALID_EMAIL_REGEX = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b/i
    validates :email, presence:true,
                      length: { maximum: 105 },
                      uniqueness: { case_sensitive: false },
                      format: { with: VALID_EMAIL_REGEX }
end