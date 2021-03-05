class AddCategoryIdToSubcategory < ActiveRecord::Migration[6.1]
  def change
    add_column :subcategories, :category_id, :integer
    add_index :subcategories, :category_id
  end
end