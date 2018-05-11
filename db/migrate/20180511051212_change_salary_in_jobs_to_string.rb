class ChangeSalaryInJobsToString < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :salary, :string

  end
end
