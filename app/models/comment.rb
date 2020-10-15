class Comment < ApplicationRecord 
    belongs_to :tactical_package, :counter_cache => true  
    belongs_to :user
end
