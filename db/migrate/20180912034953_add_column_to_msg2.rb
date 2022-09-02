class AddColumnToMsg2 < ActiveRecord::Migration[5.0]

  def up
    add_column :msgs, :sort, :integer
  end

  def down
    remove_column :msgs, :sort
  end
end
