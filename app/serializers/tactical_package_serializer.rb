class TacticalPackageSerializer < ActiveModel::Serializer
  
  include Rails.application.routes.url_helpers 
  
  attributes :id, :user_id, :title, :creator, :description, :primary_weapon_name, :secondary_weapon_name, :lethal_weapon_name, :tactical_item_name, :avatar 
  
  def avatar
      rails_blob_path(object.avatar , only_path: true) if object.avatar.attached?
  end
end
