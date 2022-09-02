class AddActivityColumn < ActiveRecord::Migration[5.0]
  def up
    add_column :activities, :column_detail, :string
  end

  def down
    remove_column :activities, :column_detail
  end
end
