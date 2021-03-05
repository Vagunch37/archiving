class AddSubjectIdToVideo < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :subject_id, :integer
    add_index :videos, :subject_id
  end
end
