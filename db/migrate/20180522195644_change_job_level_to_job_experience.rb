class ChangeJobLevelToJobExperience < ActiveRecord::Migration[5.2]
  def change
    rename_table :job_levels, :experience_levels

  end
end
