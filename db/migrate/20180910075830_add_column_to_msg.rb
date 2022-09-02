class AddColumnToMsg < ActiveRecord::Migration[5.0]
  def up
    add_column :msgs, :img, :string
  end

  def down
    remove_column :msgs, :img
  end
end
