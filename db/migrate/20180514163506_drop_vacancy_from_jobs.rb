class DropVacancyFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :vacancy_status

  end
end
