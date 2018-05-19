class ChangeIndexOnJobIdForResume < ActiveRecord::Migration[5.2]
  def change
    remove_column :resumes, :job_id

  end
end
