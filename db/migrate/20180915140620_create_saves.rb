class CreateSaves < ActiveRecord::Migration[5.0]
  def change
    create_table :saves do |t|
      t.string :title
      t.string :title_en
      t.string :img
      t.text :content
      t.text :content_en
      t.integer :sort

      t.timestamps
    end
  end
end
