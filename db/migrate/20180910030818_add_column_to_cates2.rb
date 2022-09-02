class AddColumnToCates2 < ActiveRecord::Migration[5.0]
  def up
    add_column :cates, :img, :string
  end

  def down
    remove_column :cates, :img    
  end
end
