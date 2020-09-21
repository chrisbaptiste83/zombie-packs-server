class User < ApplicationRecord 

    has_secure_password  
    has_many :tactical_packages 
    has_many :comments 
    validates_presence_of :username, :email
    validates_uniqueness_of :email, :username
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i 
    before_create :set_default_avatar

    def set_default_avatar
        if self.gender == "Male"
            self.image = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgMTnyu57w3n7MiSYwH99BIzbT-5HoQUA8Jw&usqp=CAU"
        elsif self.gender == "Female" 
            self.image = "https://www.pngkit.com/png/detail/55-554008_woman-head-people-avatar-men-icon-png.png"
        elsif self.gender == "Transgender"
            self.image = "https://dlp2gfjvaz867.cloudfront.net/product_photos/11302471/locked-hearts-and-hand-grenades-cute-wallpapers-heart-images_original.jpg"
        end
    end



end
