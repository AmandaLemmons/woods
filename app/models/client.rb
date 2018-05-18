class Client < ApplicationRecord
  enum status: {live: 0, dormant: 1, client: 2 }
  belongs_to :manager
  scope :clients, ->{ where(status: 2) }
  scope :dormant_clients, ->{ where(status: 1) }
  scope :live_clients, ->{ where(status: 0) }


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
