class User < ApplicationRecord 
    has_one_attached :avatar
    has_secure_password  
    has_many :tactical_packages 
    has_many :comments 
    validates_presence_of :username, :email
    validates_uniqueness_of :email, :username
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
    before_create :set_default_avatar

    def set_default_avatar
        self.image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgMTnyu57w3n7MiSYwH99BIzbT-5HoQUA8Jw&usqp=CAU"
    end



end
