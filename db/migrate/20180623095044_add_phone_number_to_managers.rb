class AddPhoneNumberToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :phone_number, :string
  end
end
