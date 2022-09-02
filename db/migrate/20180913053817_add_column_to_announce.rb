class AddColumnToAnnounce < ActiveRecord::Migration[5.0]
  def up
    add_column :announces, :sort, :integer
  end

  def down
    remove_column :announces, :sort
  end
end
