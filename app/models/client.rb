class Client < ApplicationRecord
  enum status: {active: 0, inactive: 1 }
  belongs_to :manager
  scope :inactive_clients, ->{ where(status: 1) }
  scope :active_clients, ->{ where(status: 0) }


  def self.filter_clients_by_options(filter_options={})
    date = Date.today + 1.day
    if filter_options[:search].blank?
      records = self.where(updated_at: (date - 30.day)..date).order(updated_at: :desc)

    else
      records = self.where(nil)
      filter_options[:search].each do |k, v|
        records = records.public_send(:"all_by_#{k}", v) if v.present?
        records
      end
    end
    records
  end



end
