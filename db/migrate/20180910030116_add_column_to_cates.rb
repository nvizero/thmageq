class AddColumnToCates < ActiveRecord::Migration[5.0]
  def up
    add_column :cates, :content_en, :string
    add_column :cates, :content, :string
    add_column :cates, :parent_id, :integer

  end

  def down
    remove_column :cates, :content_en
    remove_column :cates, :content
    remove_column :cates, :parent_id
  end
end
