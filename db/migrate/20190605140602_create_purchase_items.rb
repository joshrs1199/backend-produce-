class CreatePurchaseItems < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_items do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
