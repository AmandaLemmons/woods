class Client < ApplicationRecord
  enum status: {live: 0, dormant: 1, client: 2 }

end
