class FixJobSalaryName < ActiveRecord::Migration[5.2]
  def change
    rename_column :jobs, :job_salarie_id, :job_salary_id
  end
end
