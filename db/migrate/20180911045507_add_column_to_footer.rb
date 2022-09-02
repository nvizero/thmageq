class AddColumnToFooter < ActiveRecord::Migration[5.0]
  def up
    add_column :footers, :img, :string
  end

  def down
    remove_column :footers, :img
  end
end
