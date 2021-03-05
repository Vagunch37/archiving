class AddCategoryIdToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :category_id, :integer
    add_index :videos, :category_id
  end
end
