class FooterAddColumn < ActiveRecord::Migration[5.0]


  def up
    add_column :footers, :service_en, :string
    add_column :footers, :service_ch, :string
  end

  def down
    remove_column :footers, :service_en
    remove_column :footers, :service_ch
  end
end
