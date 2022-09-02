class CreateMsgs < ActiveRecord::Migration[5.0]
  def up
    create_table :msgs do |t|
      t.string :title
      t.string :cate_id
      t.text :content

      t.timestamps
    end
  end

  def down
    drop_table :msgs
  end
end
