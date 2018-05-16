class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :attachment
      t.belongs_to :candidate, index: true
      t.belongs_to :job, index: true

      t.timestamps
    end
  end
end
