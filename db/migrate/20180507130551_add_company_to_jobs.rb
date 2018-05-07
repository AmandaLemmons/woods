class AddCompanyToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :company, :text
    change_column :jobs, :description, :text

  end
end
