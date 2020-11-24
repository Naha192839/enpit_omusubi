class ChangeUniqueImagePathToImages < ActiveRecord::Migration[6.0]
  def change
    add_index :images, :image_path, unique: true
  end
end
