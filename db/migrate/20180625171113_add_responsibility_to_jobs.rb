class AddResponsibilityToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :responsibilities, :text
    add_column :jobs, :requirements, :text

  end
end
