class AddImageToTacticalPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :tactical_packages, :image, :string
  end
end
