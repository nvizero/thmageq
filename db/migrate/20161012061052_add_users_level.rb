class AddUsersLevel < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :level, :integer

  end

  def down
    remove_column :users, :level

  end

end
