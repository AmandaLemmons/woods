class AddFranchiseAreaToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :franchise_area, :string

  end
end
