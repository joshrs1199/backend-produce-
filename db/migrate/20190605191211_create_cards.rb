class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :user_id
      t.string :card_holder
      t.integer :card_number
      t.integer :expiration_date
      t.integer :security_code

      t.timestamps
    end
  end
end
