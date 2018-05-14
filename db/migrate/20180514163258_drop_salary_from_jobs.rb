class DropSalaryFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :salary
  end
end
