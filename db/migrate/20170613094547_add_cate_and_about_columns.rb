class AddCateAndAboutColumns < ActiveRecord::Migration[5.0]
  def up
    add_column :cates, :level, :integer
    add_column :cates, :ref_cate_id, :integer
    add_column :footers, :cate_id, :integer
  end

  def down
    remove_column :cates, :level, :integer
    remove_column :cates, :ref_cate_id, :integer
    remove_column :footers, :cate_id, :integer
  end
end
