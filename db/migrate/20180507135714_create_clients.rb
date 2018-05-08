class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :contact_name
      t.integer :status, default: 0
      t.string :company
      t.string :address
      t.string :phone_number
      t.string :email
      t.text :comments
      t.text :other

      t.timestamps
    end
  end
end
