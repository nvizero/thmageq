class CreateTableRefs < ActiveRecord::Migration[5.0]
  def up
    create_table :table_refs do |t|
      t.integer :activite_id
      t.string :table_name
      t.string :column_name
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :table_refs
  end
end
