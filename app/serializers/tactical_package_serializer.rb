class TacticalPackageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :title, :creator, :description, :primary_weapon_name, :primary_weapon_image_url, :secondary_weapon_name, :secondary_weapon_image_url, :lethal_weapon_name, :lethal_weapon_image_url, :tactical_item_name, :tactical_item_image_url
end
