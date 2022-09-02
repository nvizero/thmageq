class AddFooterColumn < ActiveRecord::Migration[5.0]
  def up
    add_column :footers, :fax, :string
    add_column :footers, :content_ch, :text
    add_column :footers, :content_en, :text
  end

  def down

    remove_column :footers, :fax
    remove_column :footers, :content_ch
    remove_column :footers, :content_en
  end
end
