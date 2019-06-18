class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :full_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone_number

      t.timestamps
    end
  end
end
