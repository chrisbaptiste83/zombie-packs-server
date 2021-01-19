class TacticalPackageSerializer
  include FastJsonapi::ObjectSerializer
  include Rails.application.routes.url_helpers 
  
  attributes :id, :user_id, :title, :creator, :description, :primary_weapon_name, :secondary_weapon_name, :lethal_weapon_name, :tactical_item_name, :image
  
  def image
    return rails_blob_url(object.avatar)
  end 

end
