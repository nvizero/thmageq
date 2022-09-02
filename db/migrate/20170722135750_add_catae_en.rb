class AddCataeEn < ActiveRecord::Migration[5.0]
  def up
    add_column :cates, :name_en, :string
    add_column :msgs, :title_en, :string
    add_column :msgs, :content_en, :text
    add_column :activities, :content_en, :text
    add_column :activities, :title_en, :string
  end

  def down
    remove_column :cates, :name_en, :string
    remove_column :msgs, :title_en, :string
    remove_column :msgs, :content_en, :text
    remove_column :activities, :content_en, :text
    remove_column :activities, :title_en, :string
  end
end
