class CreateRefFooterCates < ActiveRecord::Migration[5.0]
  def change
    create_table :ref_footer_cates do |t|
      t.string :cate_id
      t.string :footer_id
      t.timestamps
    end
  end
end
