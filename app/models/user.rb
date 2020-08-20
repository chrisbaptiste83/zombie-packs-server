class User < ApplicationRecord 
    has_secure_password  
    has_many :tactical_packages 
    has_many :comments 
end
