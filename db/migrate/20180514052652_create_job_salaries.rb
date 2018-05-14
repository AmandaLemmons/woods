class CreateJobSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :job_salaries do |t|
      t.string :salary
      t.timestamps
    end
  end
end
