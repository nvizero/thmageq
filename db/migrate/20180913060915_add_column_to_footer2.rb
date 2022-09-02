class AddColumnToFooter2 < ActiveRecord::Migration[5.0]
  def up
    add_column :footers, :sort, :integer
  end

  def down
    remove_column :footers, :sort
  end
end
