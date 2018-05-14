class Job < ApplicationRecord
  belongs_to :category
  belongs_to :job_level
  belongs_to :job_salary

  scope :all_by_category_id, ->(category_id) { where(category_id: "%#{category_id}%") }


  def self.filter_jobs_by_options(jobs_filter_options={})
    date = Date.today + 1.day
    if jobs_filter_options[:search].blank?
      records = self.where(updated_at: (date - 30.day)..date).order(updated_at: :desc)
    else
      records = self.where(nil)

      jobs_filter_options[:search].each do |k, v|
        records = records.public_send(:"all_by_#{k}", v) if v.present?
        records
      end
    end
    records
  end

end
