class User < ApplicationRecord 
    has_secure_password  
    has_many :tactical_packages 
    has_many :comments 
    validates_presence_of :username, :email
    validates_uniqueness_of :email, :username
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
