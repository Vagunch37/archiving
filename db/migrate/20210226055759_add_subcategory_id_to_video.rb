class AddSubcategoryIdToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :subcategory_id, :integer
    add_index :videos, :subcategory_id
  end
end
