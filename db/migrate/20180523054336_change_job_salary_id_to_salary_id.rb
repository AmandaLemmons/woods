class ChangeJobSalaryIdToSalaryId < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :salary_id, :integer
    remove_column :jobs, :job_salary_id

  end
end
