class ChangeNotNullToImages < ActiveRecord::Migration[6.0]
  def change
    change_column_null :images, :place_name, false
    change_column_null :images, :longitude, false
    change_column_null :images, :latitude, false
    change_column_null :images, :image_path, false
    change_column_null :images, :category, false
  end
end
