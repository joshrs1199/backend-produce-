class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :phonenumber
      t.string :contactreason

      t.timestamps
    end
  end
end
