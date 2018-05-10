class AddManagerIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :manager_id, :integer

  end
end
