class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :place_name
      t.decimal :longitude
      t.decimal :latitude
      t.string :image_path
      t.string :instagram_link
      t.timestamps
    end
  end
end
