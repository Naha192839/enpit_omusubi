class AddCategoryToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :category, :string
  end
end
