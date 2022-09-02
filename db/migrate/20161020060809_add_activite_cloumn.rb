class AddActiviteCloumn < ActiveRecord::Migration[5.0]
  def up
    add_column :activities, :column_num, :integer
  end

  def down
    remove_column :activities, :column_num 
  end
end
