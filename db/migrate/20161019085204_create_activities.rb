class CreateActivities < ActiveRecord::Migration[5.0]
  def up
    create_table :activities do |t|
      t.date :date
      t.time :time
      t.string :title
      t.text :content
      t.integer :limit_user
      t.string :other_table_name

      t.timestamps
    end
  end

  def down
    drop_table :activities 
  end
end
