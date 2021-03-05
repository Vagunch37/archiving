class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :desc
      t.text :notes
      t.text :text_in
      t.string :pub_reason
      t.string :rec_reason
      t.string :sound_type
      t.boolean :edited_material
      t.string :selling_detail_info
      t.boolean :acceptable_viewer
      t.boolean :item_special
      t.integer :item_importance
      t.integer :count_killed
      t.integer :count_injured
      t.integer :count_male
      t.integer :count_female

      t.timestamps
    end
  end
end
