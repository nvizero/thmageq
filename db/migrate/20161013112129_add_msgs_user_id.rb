class AddMsgsUserId < ActiveRecord::Migration[5.0]

  def up
    add_column :msgs, :user_id, :integer
  end

  def down
    remove_column :msgs, :user_id
  end

end
