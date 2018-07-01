class AddDirectionsToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :directions, :string

  end
end
