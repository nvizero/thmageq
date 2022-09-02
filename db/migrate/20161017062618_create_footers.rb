class CreateFooters < ActiveRecord::Migration[5.0]
  def up
    create_table :footers do |t|
      t.string :title_ch
      t.string :title_en
      t.string :address_ch
      t.string :address_en
      t.string :tel
      t.string :email
      t.string :sub_ch
      t.string :sub_en

      t.timestamps
    end
  end

  def down
    drop_table :footers
  end

end
