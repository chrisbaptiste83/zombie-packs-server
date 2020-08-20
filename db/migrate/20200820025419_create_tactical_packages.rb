class CreateTacticalPackages < ActiveRecord::Migration[6.0]
  def change
    create_table :tactical_packages do |t|
      t.integer :user_id 
      t.string :title 
      t.string :creator 
      t.text :description 
      t.string :primary_weapon_name 
      t.string :primary_weapon_image_url 
      t.string :secondary_weapon_name 
      t.string :secondary_weapon_image_url 
      t.string :lethal_weapon_name 
      t.string :lethal_weapon_image_url 
      t.string :tactical_item_name 
      t.string :tactical_item_image_url 
      t.integer :comments_count
      t.timestamps
    end
  end
end
