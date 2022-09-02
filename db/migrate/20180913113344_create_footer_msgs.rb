class CreateFooterMsgs < ActiveRecord::Migration[5.0]
  def change
    create_table :footer_msgs do |t|
    	t.integer :msg_id
    	t.integer :footer_id
      	t.timestamps
    end
  end
end
