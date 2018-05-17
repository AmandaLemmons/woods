class Client < ApplicationRecord
  enum status: {live: 0, dormant: 1, client: 2 }
  belongs_to :manager
  scope :all_by_live, ->(status) { where(status: "#{status}") }
  scope :all_by_dormant, ->(status) { where(status: "#{status}") }
  scope :all_by_client, ->(status) { where(status: "#{status}") }


  def self.filter_clients_by_options(clients_filter_options={})
    date = Date.today + 1.day
    if clients_filter_options[:search].blank?
      records = self.where(updated_at: (date - 30.day)..date).order(updated_at: :desc)
    else
      records = self.where(nil)

      clients_filter_options[:search].each do |k, v|
        records = records.public_send(:"all_by_#{k}", v) if v.present?
        binding.pry
        records
      end
    end
    records
  end

end
