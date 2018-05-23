class AddJobLevelIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :experience_level_id, :integer
  end
end
