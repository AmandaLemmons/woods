class Job < ApplicationRecord
  belongs_to :category
  belongs_to :experience_level
  belongs_to :salary
  # has_many :resumes

  # geocoded_by :location   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

  scope :all_by_category_id, ->(category_id) { where(category_id: "#{category_id}") }


  def self.filter_jobs_by_options(jobs_filter_options={})
    date = Date.today + 1.day
    if jobs_filter_options[:search].blank?
      # records = self.where(updated_at: (date - 30.day)..date).order(updated_at: :desc)
      records= self.order(title: :asc)
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
