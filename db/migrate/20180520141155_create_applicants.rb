class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.integer :job_id
      t.integer :candidate_id
      t.integer :resume_id


      t.timestamps
    end
  end
end
