class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :salary
      t.integer :vacancy_status
      t.integer :category_id

      t.timestamps
    end
  end
end
