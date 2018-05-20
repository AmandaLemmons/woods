class AddJobIdAgainToResume < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :job_id, :integer
  end
end
