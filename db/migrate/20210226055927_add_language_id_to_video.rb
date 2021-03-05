class AddLanguageIdToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :language_id, :integer
    add_index :videos, :language_id
  end
end
