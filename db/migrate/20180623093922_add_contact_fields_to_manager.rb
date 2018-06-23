class AddContactFieldsToManager < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :name, :string
    add_column :managers, :company, :string
    add_column :managers, :office, :string
    add_column :managers, :street, :string
    add_column :managers, :city, :string
    add_column :managers, :zip, :string
  end
end
