class RemoveImageUrlsFromTacticalPackages < ActiveRecord::Migration[6.0]
  def change
    remove_column :tactical_packages, :primary_weapon_image_url, :string
    remove_column :tactical_packages, :secondary_weapon_image_url, :string
    remove_column :tactical_packages, :lethal_weapon_image_url, :string
    remove_column :tactical_packages, :tactical_item_image_url, :string
  end
end
