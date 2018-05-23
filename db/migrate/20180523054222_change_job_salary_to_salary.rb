class ChangeJobSalaryToSalary < ActiveRecord::Migration[5.2]
  def change
    rename_table :job_salaries, :salaries

  end
end
